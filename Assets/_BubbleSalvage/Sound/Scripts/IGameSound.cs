using UnityEngine;

namespace _BubbleSalvage.Sound.Scripts
{
    public interface IGameSound
    {
        public string Name { get; }
        public AudioClip Clip { get; }
        public bool Loop { get; }
        public bool PlayAtAwake { get; }
        public float Volume { get; }
    }
}