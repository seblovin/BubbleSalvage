using System.Collections.Generic;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleSpawner : MonoBehaviour
    {
        public List<GameObject> _collectiblesInstances;

        public List<GameObject> CollectiblesInstances => _collectiblesInstances;
    }
}