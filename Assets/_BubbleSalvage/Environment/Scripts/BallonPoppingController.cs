using UnityEngine;

namespace BubbleSalvage
{
    public class BallonPoppingController : MonoBehaviour
    {
        private void OnTriggerEnter(Collider other)
        {
            if (other == null) return;

            if (other.attachedRigidbody == null) return;

            if (other.attachedRigidbody.CompareTag("PlayerBallon"))
            {
                // find collectible controller
                var collectibleController = other.gameObject.GetComponentInParent<CollectibleController>();
                
                if (collectibleController == null || 
                    !collectibleController.IsBalloonAttached)
                {
                    return;
                }
                
                
                // remove force
                collectibleController.RemoveForce();
                collectibleController.RemoveBalloon();
            }
        }
    }
}