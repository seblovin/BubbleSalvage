using DG.Tweening;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleUIController : MonoBehaviour
    {
        [SerializeField] private CanvasGroup _canvasGroup;
        private bool _canvasActive = true;

        public bool IsVisible => _canvasGroup.alpha > 0;

        private void OnTriggerEnter(Collider other)
        {
            if (!_canvasActive) return;

            if (other == null) return;

            if (other.attachedRigidbody == null) return;

            if (other.attachedRigidbody.tag == "Player")
            {
                _canvasGroup.DOFade(1f, 1f);
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (!_canvasActive) return;

            if (other == null) return;

            if (other.attachedRigidbody == null) return;

            if (other.attachedRigidbody.tag == "Player")
            {
                _canvasGroup.DOFade(0f, 1f);
            }
        }

        public void ToggleCanvasActivation(bool toggle, bool doFade = true)
        {
            if (doFade)
            {
                var endValue = toggle ? 1f : 0f;
                _canvasGroup.DOFade(endValue, 1f);
            }

            _canvasActive = toggle;
        }
    }
}