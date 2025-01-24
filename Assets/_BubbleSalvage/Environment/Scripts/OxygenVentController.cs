using UnityEngine;

namespace BubbleSalvage
{
    public class OxygenVentController : MonoBehaviour
    {
        [SerializeField] private PlayerView _player;
        [SerializeField] private OxygenVent _oxygenVent;
        
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