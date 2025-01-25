using UnityEngine;
using UnityEngine.Serialization;

namespace BubbleSalvage
{
    public class OxygenRefillController : MonoBehaviour
    {
        [SerializeField] private PlayerView _player;
        [SerializeField] private OxigenRefill _oxigenRefill;
        
        public void FillOxygen()
        {
            // Fill oxygen
            // TODO: WAIT FOR OXYGEN RESOURCE ON PLAYER TO BE IMPLEMENTED
        }

        public void OnTriggerEnter(Collider other)
        {
            // Fill oxygen
            FillOxygen();
        }
    }
}