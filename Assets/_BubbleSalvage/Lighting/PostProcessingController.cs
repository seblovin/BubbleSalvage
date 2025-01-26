using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

namespace BubbleSalvage
{
    public class PostProcessingController : MonoBehaviour
    {
        public Volume Volume;
        public AnimationCurve OxygenVignetteCurve;
        public Gradient OxygenVignetteColorGradient;

        Vignette _vignette;

        void Awake()
        {
            Volume.sharedProfile.TryGet(out _vignette);
        }

        void Update()
        {
            var playerOxygenManager = PlayerOxygenManager.Instance;
            var currentOxygen = playerOxygenManager.CurrentOxygen / playerOxygenManager.MaxOxygen;
            _vignette.intensity.value = OxygenVignetteCurve.Evaluate(currentOxygen);
            _vignette.color.value = OxygenVignetteColorGradient.Evaluate(currentOxygen);
        }
    }
}