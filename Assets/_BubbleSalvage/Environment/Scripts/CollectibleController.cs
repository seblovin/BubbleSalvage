using NaughtyAttributes;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleController : MonoBehaviour
    {
        [SerializeField] private ConstantForce _constantForce;
        [SerializeField] private Collectible _collectible;

        public void Raise(float force)
        {
            // change gravity to positive simulating falling down
            _constantForce.force = new Vector3(0, force, 0);
        }

        [Button]
        public void TestRaise()
        {
            Raise(20);
        }
    }
}