using System;
using System.Collections.Generic;
using UnityEngine;

namespace BubbleSalvage
{
    public class CollectibleSpawner : MonoBehaviour
    {
        public List<CollectibleController> _collectiblesInstances;

        public List<CollectibleController> CollectiblesInstances => _collectiblesInstances;
        
        private void Awake()
        {
            // subscribe to collectible controller event
            CollectibleController.OnHeightReached.AddListener(OnHeightReached);
        }

        private void OnDestroy()
        {
            // unsubscribe from collectible controller event
            CollectibleController.OnHeightReached.RemoveListener(OnHeightReached);
        }

        private void OnHeightReached(CollectibleController collectible)
        {
            // remove entry from collection
            _collectiblesInstances.Remove(collectible);
        }
    }
}