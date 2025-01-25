using System;
using System.Collections.Generic;
using UnityEngine;

namespace BubbleSalvage
{
    public class TargetsPanelController : MonoBehaviour
    {
        public GameObject _arrow;
        public CollectibleSpawner _collectibleSpawner;

        private Dictionary<GameObject, GameObject> _arrows = new Dictionary<GameObject, GameObject>();

        private void Start()
        {
            // create arrow for each collectible

            foreach (var collectible in _collectibleSpawner.CollectiblesInstances)
            {
                GameObject arrow = Instantiate(_arrow, transform);
                // save arrow instance
                _arrows.Add(collectible, arrow);
            }
        }

        private void Update()
        {
            // check collectible position compared to center of screen
            foreach (var collectible in _collectibleSpawner.CollectiblesInstances)
            {
                if (!_arrows.ContainsKey(collectible)) continue;

                GameObject arrow = _arrows[collectible];
                Vector3 screenPos = Camera.main.WorldToScreenPoint(collectible.transform.position);
                // get direction to collectible from center of screen
                Vector3 direction = screenPos - new Vector3(Screen.width / 2, Screen.height / 2, 0);
                // normalize
                direction.Normalize();
                // set arrow rotation
                arrow.transform.rotation = Quaternion.LookRotation(Vector3.forward, direction);
                // put arrow on border of screen given the direction
                arrow.transform.position =
                    new Vector3(Screen.width / 2, Screen.height / 2, 0) + direction * Screen.width / 2;
                // flatten position to screen limits
                arrow.transform.position = new Vector3(Mathf.Clamp(arrow.transform.position.x, 0, Screen.width),
                    Mathf.Clamp(arrow.transform.position.y, 0, Screen.height), 0);

                // check if the collectible is visible, if that's the case, hide the arrow
                if (screenPos.x > 0 && screenPos.x < Screen.width && screenPos.y > 0 && screenPos.y < Screen.height)
                {
                    arrow.SetActive(false);
                }
                else
                {
                    arrow.SetActive(true);
                }
            }
        }
    }
}