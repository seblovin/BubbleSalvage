using System;
using System.Collections.Generic;
using UnityEngine;

namespace _BubbleSalvage.Sound.Scripts
{
    [Serializable]
    public class GameSound
    {
        public string Name;
        public AudioClip Clip;
        public bool Loop;
    }
    
    public class SoundManager : MonoBehaviour
    {
        [SerializeField] private GameSound[] _gameSounds = Array.Empty<GameSound>();
        private List<GameObject> _soundSources = new List<GameObject>();
        
        // create singleton pattern
        private static SoundManager _instance;
        
        public static SoundManager Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = FindObjectOfType<SoundManager>();
                    if (_instance == null)
                    {
                        GameObject go = new GameObject("SoundManager");
                        _instance = go.AddComponent<SoundManager>();
                    }
                }
                return _instance;
            }
        }
        
        public void PlaySound(AudioClip clip, bool loop = false)
        {
            GameObject soundSource = new GameObject("SoundSource");
            AudioSource audioSource = soundSource.AddComponent<AudioSource>();
            audioSource.clip = clip;
            audioSource.loop = loop;
            audioSource.Play();
            _soundSources.Add(soundSource);
            
            // reparent sound sources to sound manager
            soundSource.transform.SetParent(transform);
        }
        
        public void PlaySound(string name)
        {
            GameSound gameSound = Array.Find(_gameSounds, sound => sound.Name == name);
            
            if (gameSound == null)
            {
                Debug.LogWarning("Sound: " + name + " not found!");
                return;
            }
            
            PlaySound(gameSound.Clip, gameSound.Loop);
        }
        
        // stop sound
        public void StopSound(AudioClip clip)
        {
            GameObject soundSource = _soundSources.Find(source => source.GetComponent<AudioSource>().clip == clip);
            if (soundSource == null) return;
            
            AudioSource audioSource = soundSource.GetComponent<AudioSource>();
            audioSource.Stop();
            _soundSources.Remove(soundSource);
            Destroy(soundSource);
        }
        
        public void StopSound(string name)
        {
            GameSound gameSound = Array.Find(_gameSounds, sound => sound.Name == name);
            
            if (gameSound == null)
            {
                Debug.LogWarning("Sound: " + name + " not found!");
                return;
            }
            
            StopSound(gameSound.Clip);
        }
        
        // stop all sounds
        public void StopAllSounds()
        {
            foreach (var soundSource in _soundSources)
            {
                AudioSource audioSource = soundSource.GetComponent<AudioSource>();
                audioSource.Stop();
                Destroy(soundSource);
            }
            _soundSources.Clear();
        }
    }
}