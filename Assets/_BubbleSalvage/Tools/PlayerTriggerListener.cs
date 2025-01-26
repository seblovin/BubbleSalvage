using UnityEngine;
using UnityEngine.Events;

namespace BubbleSalvage
{
    public class PlayerTriggerListener : MonoBehaviour
    {
        public UnityEvent OnPlayerEnter;
        public UnityEvent OnPlayerExit;
        public UnityEvent<bool> PlayerInside;

        public void OnTriggerEnter(Collider other)
        {
            if (!(other.attachedRigidbody?.CompareTag(PlayerView.PlayerTag) ?? false))
                return;
            
            OnPlayerEnter?.Invoke();
            PlayerInside?.Invoke(true);
        }
        public void OnTriggerExit(Collider other)
        {
            if (!(other.attachedRigidbody?.CompareTag(PlayerView.PlayerTag) ?? false)) 
                return;
            
            OnPlayerExit?.Invoke();
            PlayerInside?.Invoke(false);
        }
    }
}