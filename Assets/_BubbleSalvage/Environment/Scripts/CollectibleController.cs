using DG.Tweening;
using NaughtyAttributes;
using UnityEngine;
using UnityEngine.Events;

namespace BubbleSalvage
{
    public class CollectibleController : MonoBehaviour
    {
        [SerializeField] private CollectibleUIController _uiController;
        [SerializeField] private ConstantForce _constantForce;
        [SerializeField] private int _score;
        [SerializeField] private GameObject _ballon;
        [SerializeField] private float _heightToScore;

        private bool _canScore = true;

        public static UnityEvent<CollectibleController> OnHeightReached = new();

        public int Score
        {
            get => _score;
        }

        public bool CanScore
        {
            get => _canScore;
        }

        public void Raise(float force)
        {
            // change gravity to positive simulating falling down
            _constantForce.force = new Vector3(0, force, 0);
        }

        public void AttachBalloon()
        {
            _ballon.gameObject.SetActive(true);
        }

        public void RemoveBalloon()
        {
            _ballon.gameObject.SetActive(false);
        }

        public void RemoveForce()
        {
            _constantForce.force = Vector3.zero;
        }

        private void Update()
        {
            if (_uiController.IsVisible && Input.GetButtonDown("Jump"))
            {
                Raise(15);
                AttachBalloon();
            }
            
            // trigger event after object reaches a certain height
            if (transform.position.y >= _heightToScore)
            {
                OnHeightReached?.Invoke(this);
                transform.DOScale(Vector3.zero, 1f).onComplete = () => Destroy(gameObject);
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