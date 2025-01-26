using System;
using DG.Tweening;
using UnityEngine;
using UnityEngine.Events;

namespace BubbleSalvage
{
    [RequireComponent(typeof(CanvasGroup))]
    public class FadeCanvasGroup : MonoBehaviour
    {
        private CanvasGroup _canvasGroup;
        [SerializeField] private UnityEvent _onFadeInComplete;
        [SerializeField] private UnityEvent _onFadeOutComplete;

        private void Awake()
        {
            _canvasGroup = GetComponent<CanvasGroup>();
        }
        
        public void FadeIn(float duration)
        {
            _canvasGroup.DOFade(1f, duration);
            // call the event after the duration
            DOVirtual.DelayedCall(duration, () => _onFadeInComplete?.Invoke());
        }
        
        public void FadeOut(float duration)
        {
            _canvasGroup.DOFade(0f, duration);
            // call the event after the duration
            DOVirtual.DelayedCall(duration, () => _onFadeOutComplete?.Invoke());
        }
    }
}