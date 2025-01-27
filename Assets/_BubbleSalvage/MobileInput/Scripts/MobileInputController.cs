using System;
using UnityEngine;
using UnityEngine.EventSystems;

namespace BubbleSalvage
{
    public class MobileInputController : MonoBehaviour,
        IPointerDownHandler, IDragHandler, IPointerUpHandler
    {
        public static MobileInputController Instance { get; private set; }
        public static bool IsActive =>
#if UNITY_EDITOR
            Instance.ActiveInEditor;
#else
            Application.isMobilePlatform;
#endif
        public bool ActiveInEditor = true;

        public FixedJoystick LeftJoystick;
        public FixedJoystick RightJoystick;
        public bool LogValues = false;
        public int TargetFrameRate = 15;

        public bool IsPressing
        {
            get => IsActive && _isPressing;
            private set => _isPressing = value;
        }

        bool _isPressing;

        void Awake()
        {
            Instance = this;
            if (!IsActive)
                gameObject.SetActive(false);
        }

        void Update()
        {
            if (LogValues)
            {
                Debug.Log($"LeftJoystick: Dir: {LeftJoystick.Direction}, Range:{LeftJoystick.HandleRange}");
                Debug.Log($"RightJoystick: Dir: {RightJoystick.Direction}, Range:{RightJoystick.HandleRange}");
            }

            if (Application.targetFrameRate != TargetFrameRate)
                Application.targetFrameRate = TargetFrameRate;
        }

        public void OnPointerDown(PointerEventData eventData) => IsPressing = true;

        public void OnPointerUp(PointerEventData eventData) => IsPressing = false;
        
        public void OnDrag(PointerEventData eventData)
        {
        }
    }
}