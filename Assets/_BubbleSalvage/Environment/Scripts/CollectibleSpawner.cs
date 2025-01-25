using System;
using System.Collections.Generic;
using UnityEngine;

namespace BubbleSalvage
{
    [Serializable]
    public class SpawnPoint
    {
        public CollectibleController Collectible;
        public Transform Point;
    }
    
    public class CollectibleSpawner : MonoBehaviour
    {
        public float _spawnCycle = 3;
        public int _minimumCollectibles = 5;
        public GameObject[] _collectiblePrefabs;
        public List<CollectibleController> _collectiblesInstances = new();
        public List<SpawnPoint> _spawnPoints = new();
        
        private float _spawnTimer;

        public List<CollectibleController> CollectiblesInstances => _collectiblesInstances;
        
        private void Awake()
        {
            // subscribe to collectible controller event
            CollectibleController.OnHeightReached.AddListener(OnHeightReached);
        }

        private void Update()
        {
            // increase our timer and check if we are over a cycle
            _spawnTimer += Time.deltaTime;
            
            if (_spawnTimer >= _spawnCycle)
            {
                // reset timer
                _spawnTimer = 0;
                
                if (_collectiblesInstances.Count < _minimumCollectibles)
                {
                    // spawn collectible
                    SpawnCollectible();
                }
            }
        }

        private void SpawnCollectible()
        {
            // filter only spawn points without collectibles
            var availableSpawnPoints = _spawnPoints.FindAll(sp => sp.Collectible == null);
            if (availableSpawnPoints.Count == 0) return;
            // find a random spawn point
            var spawnPoint = availableSpawnPoints[UnityEngine.Random.Range(0, availableSpawnPoints.Count)];
            // find a random collectible prefab
            var collectiblePrefab = _collectiblePrefabs[UnityEngine.Random.Range(0, _collectiblePrefabs.Length)];
            // instantiate collectible
            var collectible = Instantiate(collectiblePrefab, spawnPoint.Point.position, Quaternion.identity).GetComponent<CollectibleController>();
            // set collectible reference
            spawnPoint.Collectible = collectible;
            // add entry to collection
            _collectiblesInstances.Add(collectible);
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