using System;
using System.Collections.Generic;
using UnityEngine;

namespace BubbleSalvage
{
    public class OxygenRefillView : MonoBehaviour
    {
        public float OxygenFillRate = 5;
        readonly List<PlayerOxygenManager> _refillingPlayers = new();

        void OnEnable()
        {
            _refillingPlayers.Clear();
        }

        void Update()
        {
            foreach (var refillingPlayer in _refillingPlayers) 
                refillingPlayer.AddOxygen(OxygenFillRate * Time.deltaTime);
        }

        void OnTriggerEnter(Collider other)
        {
            var playerOxygenManager = other.GetComponentInParent<PlayerOxygenManager>();
            if (playerOxygenManager) 
                _refillingPlayers.Add(playerOxygenManager);
        }

        void OnTriggerExit(Collider other)
        {
            var playerOxygenManager = other.GetComponentInParent<PlayerOxygenManager>();
            if (playerOxygenManager && _refillingPlayers.Contains(playerOxygenManager)) 
                _refillingPlayers.Remove(playerOxygenManager);
        }
    }
}