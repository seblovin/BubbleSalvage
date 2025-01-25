using System;
using UnityEngine;

namespace BubbleSalvage
{
    public class PlayerOxygenManager : MonoBehaviour
    {
        public static PlayerOxygenManager Instance;

        public float CurrentOxygen { get; private set; }
        public float MaxOxygen;
        public float OxygenDepletionRate = .5f;

        public Transform OxygenContainerParent;
        public Transform OxygenBar;
        
        public Vector3 OxygenBarMinScale = new(1, 0, 1);
        public Vector3 OxygenBarMaxScale = new(1, 1, 1);
        Vector3 _lastOxygenContainerPos;

        void Awake()
        {
            Instance = this;
            CurrentOxygen = MaxOxygen;
        }

        void LateUpdate()
        {
            OxygenContainerParent.transform.rotation = Quaternion.identity;
        }

        void Update()
        {
            // oxygenDepletion
            UpdateOxygenDepletion();
            UpdateOxygenBar();
        }

        void UpdateOxygenDepletion()
        {
            CurrentOxygen -= OxygenDepletionRate * Time.deltaTime;
            if (CurrentOxygen < 0)
            {
                Debug.Log("OUT OF OXYGEN");
            }
            
        }

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
            CurrentOxygen = Mathf.Min(MaxOxygen, CurrentOxygen + amount);
        }
    }
}