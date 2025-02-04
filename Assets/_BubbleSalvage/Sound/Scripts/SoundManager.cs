using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace _BubbleSalvage.Sound.Scripts
{
    public class SoundManager : MonoBehaviour
    {
        [SerializeField] private GameSound[] _gameSounds = Array.Empty<GameSound>();
        [SerializeField] private RandomGameSound[] _randomizedGameSounds = Array.Empty<RandomGameSound>();
        private List<GameObject> _soundSources = new();

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

        private void Awake()
        {
            if (_instance == null)
            {
                _instance = this;
            }
            else
            {
                Destroy(gameObject);
            }

            foreach (var gameSound in _gameSounds)
            {
                if (gameSound.PlayAtAwake)
                {
                    PlaySound(gameSound.Name);
                }
            }

            foreach (var gameSound in _randomizedGameSounds)
            {
                if (gameSound.PlayAtAwake)
                {
                    PlaySound(gameSound.Name);
                }
            }
        }

        public void PlaySound(AudioClip clip, bool loop = false, float volume = 1f, float delayToStop = 0f)
        {
            // check if the sound is already playing
            if (_soundSources.Exists(source => source.GetComponent<AudioSource>().clip == clip))
            {
                return;
            }

            GameObject soundSource = new GameObject("SoundSource");
            AudioSource audioSource = soundSource.AddComponent<AudioSource>();
            audioSource.clip = clip;
            audioSource.loop = loop;
            audioSource.volume = volume;
            audioSource.Play();
            _soundSources.Add(soundSource);

            // reparent sound sources to sound manager
            soundSource.transform.SetParent(transform);

            // if not looping stop on audio clip end
            if (!loop)
            {
                StartCoroutine(StopSoundOnEnd(audioSource, delayToStop));
            }
        }

        private IEnumerator StopSoundOnEnd(AudioSource audioSource, float delayToStop)
        {
            // wait for delay
            yield return new WaitForSeconds(delayToStop);

            while (audioSource != null && audioSource.isPlaying)
            {
                yield return null;
            }
            
            if (audioSource == null) yield break;

            StopSound(audioSource.clip);
        }

        public void PlaySound(string name)
        {
            PlaySound(name, 0f);
        }

        public void PlaySound(string name, float delayToStop)
        {
            IGameSound gameSound = Array.Find(_gameSounds, sound => sound.Name == name);

            if (gameSound == null)
            {
                // try within randomized sounds
                RandomGameSound randomGameSound = Array.Find(_randomizedGameSounds, sound => sound.Name == name);

                if (randomGameSound == null)
                {
                    Debug.LogWarning("Sound: " + name + " not found!");
                    return;
                }

                gameSound = randomGameSound;
            }

            PlaySound(gameSound.Clip, gameSound.Loop, gameSound.Volume, delayToStop);
        }

        // stop sound
        public void StopSound(AudioClip clip)
        {
            GameObject soundSource = _soundSources.Find(source => source.GetComponent<AudioSource>().clip == clip);

            if (soundSource == null)
            {
                Debug.LogWarning("Sound: " + clip.name + " not found!");
                return;
            }

            AudioSource audioSource = soundSource.GetComponent<AudioSource>();
            audioSource.Stop();
            _soundSources.Remove(soundSource);
            Destroy(soundSource);
        }

        public void StopSound(string name)
        {
            IGameSound gameSound = Array.Find(_gameSounds, sound => sound.Name == name);

            if (gameSound == null)
            {
                // try with randomized sounds
                RandomGameSound randomGameSound = Array.Find(_randomizedGameSounds, sound => sound.Name == name);

                if (randomGameSound == null)
                {
                    Debug.LogWarning("Sound: " + name + " not found!");
                    return;
                }

                StopSound(randomGameSound.LastClip);
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