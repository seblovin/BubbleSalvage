using System.Collections.Generic;
using UnityEngine;

namespace BubbleSalvage
{
    public class TargetsPanelController : MonoBehaviour
    {
        public float _distanceLimit = 50;
        public PlayerView _playerView;
        public GameObject _arrow;
        public CollectibleSpawner _collectibleSpawner;

        private Dictionary<CollectibleController, GameObject> _arrows = new Dictionary<CollectibleController, GameObject>();

        private void Start()
        {
            // create arrow for each collectible

            foreach (var collectible in _collectibleSpawner.CollectiblesInstances)
            {
                GameObject arrow = Instantiate(_arrow, transform);
                // save arrow instance
                _arrows.Add(collectible, arrow);
            }
            
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
            // remove from dictionary
            _arrows.Remove(collectible);
        }

        private void Update()
        {
            // look for the closest collectible
            CollectibleController closestCollectible = null;
            float minDistance = float.MaxValue;
            
            foreach (var collectible in _collectibleSpawner.CollectiblesInstances)
            {
                float distance = Vector3.Distance(collectible.transform.position, _playerView.transform.position);
                
                if (distance < minDistance)
                {
                    minDistance = distance;
                    closestCollectible = collectible;
                }
            }
            
            if (!_arrows.ContainsKey(closestCollectible)) return;
            
            // deactive all arrows
            foreach (var arrowPair in _arrows)
            {
                arrowPair.Value.SetActive(false);
            }
            
            if (minDistance <= _distanceLimit) return;

            GameObject arrow = _arrows[closestCollectible];
            Vector3 screenPos = Camera.main.WorldToScreenPoint(closestCollectible.transform.position);
            arrow.SetActive(true);
            // get direction to collectible from center of screen
            Vector3 direction = screenPos - new Vector3(Screen.width / 2, Screen.height / 2, 0);
            // normalize
            direction.Normalize();
            // set arrow rotation
            arrow.transform.rotation = Quaternion.LookRotation(Vector3.forward, direction);
            // put arrow on border of screen given the direction
            arrow.transform.position = new Vector3(Screen.width / 2, Screen.height / 2, 0) + direction * 150;
        }
    }
}