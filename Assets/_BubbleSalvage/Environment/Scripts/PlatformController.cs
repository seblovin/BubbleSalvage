using DG.Tweening;
using UnityEngine;

namespace BubbleSalvage
{
    public class PlatformController : MonoBehaviour
    {
        [SerializeField] private Platform _platform;

        public Transform target;

        private void Start()
        {
            transform.DOMove(target.position, _platform.TimeToMove).SetLoops(-1, LoopType.Yoyo);
        }
    }
}