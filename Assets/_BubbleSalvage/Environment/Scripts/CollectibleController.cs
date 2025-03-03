using System;
using _BubbleSalvage.Sound.Scripts;
using DG.Tweening;
using NaughtyAttributes;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.VFX;
using System.Collections;

namespace BubbleSalvage
{
    public class CollectibleController : MonoBehaviour
    {
        [SerializeField] private CollectibleUIController _uiController;
        [SerializeField] private ConstantForce _constantForce;
        [SerializeField] private int _score;
        [SerializeField] private GameObject _ballon;
        [SerializeField] private GameObject _ballon_Explosion;
        [SerializeField] private Transform _ballonRotationPivot;
        [SerializeField] private float _heightToScore;
        [SerializeField] private float _oxygenRequiredToAttach = 1f;
        [SerializeField] private UnityEvent _onHeightReached;
        [SerializeField] private UnityEvent _onBallonAttached;
        [SerializeField] private UnityEvent _onBallonRemoved;
        [SerializeField] private VisualEffect _visualEffect;

        private bool _canScore = true;
        private bool _isBalloonAttached = false;
        public string PositionPropertyName = "VFXPosition";

        public static UnityEvent<CollectibleController> OnHeightReached = new();
        
        private static int _balloonAttachmentControl = 0;

        public int Score
        {
            get => _score;
        }

        public bool CanScore
        {
            get => _canScore;
        }

        void LateUpdate()
        {
            _ballonRotationPivot.transform.rotation = Quaternion.identity;
        }

        public bool IsBalloonAttached => _isBalloonAttached;

        public void Raise(float force)
        {
            // change gravity to positive simulating falling down
            _constantForce.force = new Vector3(0, force, 0);
        }

        public bool AttachBalloon()
        {
            if (_balloonAttachmentControl <= 0 && PlayerOxygenManager.Instance.TryConsumeOxygen(_oxygenRequiredToAttach))
            {
                _ballon.gameObject.SetActive(true);
                _isBalloonAttached = true;
                _uiController.ToggleCanvasActivation(false);
                SoundManager.Instance.PlaySound("BalloonInflate");
                _onBallonAttached?.Invoke();
                return true;
            }

            return false;
        }

        public void RemoveBalloon()
        {
            _ballon.gameObject.SetActive(false);
            _ballon_Explosion.gameObject.SetActive(true);
            _isBalloonAttached = false;
            _uiController.ToggleCanvasActivation(true, false);
            _onBallonRemoved?.Invoke();
            SoundManager.Instance.PlaySound("BalloonPop");
            _visualEffect.enabled = true;
            _visualEffect.SetVector3(PositionPropertyName, transform.position);
            _visualEffect?.Play();

            StartCoroutine(DeactivateExplosionAfterDelay(3.8f));
            // Temporarily detach the _ballon_Explosion from its parent
            _ballon_Explosion.transform.position = transform.position;
            _ballon_Explosion.transform.SetParent(null);
        }
        private IEnumerator DeactivateExplosionAfterDelay(float delay)
    {
        yield return new WaitForSeconds(delay); // Wait for the specified delay
        _ballon_Explosion.gameObject.SetActive(false); // Deactivate the explosion
    }

        public void RemoveForce()
        {
            _constantForce.force = Vector3.zero;
        }

        private void Update()
        {
            // trigger event after object reaches a certain height
            if (transform.position.y >= _heightToScore)
            {
                OnHeightReached?.Invoke(this);
                transform.DOScale(Vector3.zero, 1f).onComplete = () => Destroy(gameObject);
                _onHeightReached?.Invoke();
                enabled = false;
            }

            if (_uiController.IsVisible && !IsBalloonAttached && Input.GetButtonDown("Jump"))
            {
                if (AttachBalloon())
                {
                    Raise(15);
                    // restore control value and wait for a certain time before next balloon attachment
                    _balloonAttachmentControl = 1;
                    DOVirtual.Int(1, 0, .25f, value => _balloonAttachmentControl = value);
                }
            }
        }

        public void RemoveScore()
        {
            _canScore = false;
        }

        [Button]
        public void TestRaise()
        {
            Raise(20);
        }
    }
}