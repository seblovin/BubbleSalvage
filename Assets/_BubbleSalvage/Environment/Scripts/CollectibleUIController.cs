using DG.Tweening;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleUIController : MonoBehaviour
    {
        [SerializeField] private CanvasGroup _canvasGroup;
        
        public bool IsVisible => _canvasGroup.alpha > 0;
        
        private void OnTriggerEnter(Collider other)
        {
            if (other == null) return;
            
            if (other.attachedRigidbody == null) return;
            
            if (other.attachedRigidbody.tag == "Player")
            {
                _canvasGroup.DOFade(1f, 1f);
            }
        }

        private void OnTriggerExit(Collider other)
        {
            if (other.attachedRigidbody.tag == "Player")
            {
                _canvasGroup.DOFade(0f, 1f);
            } 
        }
    }
}