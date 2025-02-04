using System;
using UnityEngine;

namespace _BubbleSalvage.Sound.Scripts
{
    [Serializable]
    public class RandomGameSound : IGameSound
    {
        [SerializeField] private string _name;
        [SerializeField] private AudioClip[] _clips;
        [SerializeField] private bool _loop;
        [SerializeField] private bool _playAtAwake;
        [SerializeField, Range(0f, 1f)] private float _volume;
        private AudioClip _lastClip;

        public string Name => _name;

        public AudioClip Clip => _clips == null || _clips.Length == 0
            ? null
            : _lastClip = _clips[UnityEngine.Random.Range(0, _clips.Length)];
        public AudioClip LastClip => _lastClip;

        public bool Loop => _loop;

        public bool PlayAtAwake => _playAtAwake;

        public float Volume => _volume;
    }
}