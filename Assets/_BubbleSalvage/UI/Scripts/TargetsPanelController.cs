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
        
        private void Start()
        {
            _arrow.SetActive(false);
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
            // de-active arrow
            _arrow.SetActive(false);
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

            if (minDistance <= _distanceLimit)
            {
                _arrow.SetActive(false);
                return;
            }
            
            Vector3 screenPos = Camera.main.WorldToScreenPoint(closestCollectible.transform.position);
            _arrow.SetActive(true);
            // get direction to collectible from center of screen
            Vector3 direction = screenPos - new Vector3(Screen.width / 2, Screen.height / 2, 0);
            // normalize
            direction.Normalize();
            // set arrow rotation
            _arrow.transform.rotation = Quaternion.LookRotation(Vector3.forward, direction);
            // put arrow on border of screen given the direction
            _arrow.transform.position = new Vector3(Screen.width / 2, Screen.height / 2, 0) + direction * 150;
        }
    }
}