using System.Collections.Generic;
using System.Linq;
using DG.Tweening;
using UnityEngine;

namespace BubbleSalvage
{
    public class MovingObjectController : MonoBehaviour
    {
        [SerializeField] public float _moveDuration;
        [SerializeField] public LoopType _loopType;
        [SerializeField] public bool _lookAt;
        [SerializeField] public List<Transform> targets;

        private void Start()
        {
            // no movement if there are no targets
            if (targets.Count == 0)
            {
                return;
            }

            // create loop targets
            var loopPoints = targets.Select(x => x.position).ToArray();

            if (!_lookAt)
            {
                transform.DOPath(loopPoints, _moveDuration, PathType.CatmullRom, PathMode.Full3D, 10, Color.red)
                    .SetLoops(-1, _loopType);
                return;
            }

            transform.DOPath(loopPoints.ToArray(), _moveDuration, PathType.CatmullRom, PathMode.Full3D, 10, Color.red)
                .SetLoops(-1, _loopType).SetLookAt(0.01f);
        }

        private void OnDrawGizmos()
        {
            // draw lines between the points
            for (int i = 0; i < targets.Count; i++)
            {
                if (i + 1 < targets.Count)
                {
                    Gizmos.DrawLine(targets[i].position, targets[i + 1].position);
                }
                else
                {
                    Gizmos.DrawLine(targets[i].position, targets[0].position);
                }
            }
        }
    }
}