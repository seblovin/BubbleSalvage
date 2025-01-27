using System;
using _BubbleSalvage.Sound.Scripts;
using DG.Tweening;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

namespace BubbleSalvage
{
    public class PlayerOxygenManager : MonoBehaviour
    {
        public static PlayerOxygenManager Instance;

        public float CurrentOxygen { get; private set; }
        public bool IsDead { get; private set; } = false;

        public float MaxOxygen;
        public float OxygenDepletionRate = .5f;

        public Transform OxygenContainerParent;
        public Transform OxygenBar;
        public UnityEvent OnDead;
        public UnityEvent FullToHalfOxygen;
        public UnityEvent HalfToQuaterOxygen;
        public UnityEvent QuaterToEmptyOxygen;
        
        public Vector3 OxygenBarMinScale = new(1, 0, 1);
        public Vector3 OxygenBarMaxScale = new(1, 1, 1);
        
        Vector3 _lastOxygenContainerPos;
        
        public float _timeAllowedAfterDeath = 1.5f;
        
        [Header("Sound")]
        public float LackOxygenSoundMinimum = 2f;
        public float LackOxygenSoundInterval = 2f;

        void Awake()
        {
            Instance = this;
            IsDead = false;
            CurrentOxygen = MaxOxygen;
        }

        void LateUpdate()
        {
            OxygenContainerParent.transform.rotation = Quaternion.identity;
        }

        void Update()
        {
            if (IsDead)
            {
                // wait for delay before we allow key down
                _timeAllowedAfterDeath -= Time.deltaTime;
                
                if (_timeAllowedAfterDeath < 0)
                {
                    if (Input.anyKeyDown || 
                        MobileInputController.IsActive || MobileInputController.Instance.IsPressing)
                    {
                        ReloadScene();
                    }
                    return;
                }

                return;
            }
            // oxygenDepletion
            UpdateOxygenDepletion();
            UpdateOxygenBar();
            var oxygenFactor = CurrentOxygen / MaxOxygen;
            // like probably you wouldnt call this every frame ofc, but aint got no time for that
            if (oxygenFactor > .5f)
                FullToHalfOxygen?.Invoke();
            else if (oxygenFactor > .25f)
                HalfToQuaterOxygen?.Invoke();
            else
                QuaterToEmptyOxygen?.Invoke();
            
            // check if we need to trigger sound
            if (CurrentOxygen < LackOxygenSoundMinimum)
            {
                // increase our interval
                LackOxygenSoundInterval -= Time.deltaTime;

                if (LackOxygenSoundInterval < 0)
                {
                    LackOxygenSoundInterval = LackOxygenSoundMinimum;
                    SoundManager.Instance.PlaySound("LackOxygen");
                }
            }
        }

        void UpdateOxygenDepletion()
        {
            CurrentOxygen -= OxygenDepletionRate * Time.deltaTime;
            if (CurrentOxygen < 0) 
                Die();
            
        }

        void Die()
        {
            IsDead = true;
            OnDead?.Invoke();
        }

        void ReloadScene() => SceneManager.LoadScene(0);

        void UpdateOxygenBar()
        {
            OxygenBar.localScale = Vector3.Lerp(OxygenBarMinScale, OxygenBarMaxScale, CurrentOxygen / MaxOxygen);
        }

        public bool TryConsumeOxygen(float amount)
        {
            if (CurrentOxygen - amount < 0)
            {
                return false;
            }

            CurrentOxygen -= amount;
            return true;
        }

        public void AddOxygen(float amount)
        {
            if (IsDead) 
                return;
            
            CurrentOxygen = Mathf.Min(MaxOxygen, CurrentOxygen + amount);
        }
    }
}