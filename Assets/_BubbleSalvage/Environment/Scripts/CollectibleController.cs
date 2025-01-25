using NaughtyAttributes;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleController : MonoBehaviour
    {
        [SerializeField] private CollectibleUIController _uiController;
        [SerializeField] private ConstantForce _constantForce;
        [SerializeField] private int _collectibleScore;
        [SerializeField] private GameObject _ballon;

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
        }

        [Button]
        public void TestRaise()
        {
            Raise(20);
        }
    }
}