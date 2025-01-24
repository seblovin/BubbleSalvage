using DG.Tweening;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleUIController : MonoBehaviour
    {
        [SerializeField] private CanvasGroup _canvasGroup;
        
        private void OnTriggerEnter(Collider other)
        {
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