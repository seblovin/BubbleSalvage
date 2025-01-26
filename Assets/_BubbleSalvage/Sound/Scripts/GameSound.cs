using System;
using UnityEngine;

namespace _BubbleSalvage.Sound.Scripts
{
    [Serializable]
    public class GameSound : IGameSound
    {
        [SerializeField] private string _name;
        [SerializeField] private AudioClip _clip;
        [SerializeField] private bool _loop;
        [SerializeField] private bool _playAtAwake;
        [SerializeField, Range(0f, 1f)] private float _volume;

        public string Name => _name;
        public AudioClip Clip => _clip;
        public bool Loop => _loop;
        public bool PlayAtAwake => _playAtAwake;
        public float Volume => _volume;
    }
}