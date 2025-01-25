using System;
using DG.Tweening;
using UnityEngine;

namespace BubbleSalvage
{
    public class MovingObjectController : MonoBehaviour
    {
        [SerializeField] public float TimeToMove;
        [SerializeField] public Transform[] target;
        
        private int currentTarget = 0;
        
        private void Start()
        {
            // no movement if there are no targets
            if (target.Length == 0)
            {
                return;
            }
            
            // t / target.Length isn't the best way to calculate the time to move and keep it within the magnitude, but it works
            transform.DOMove(target[0].position, TimeToMove / target.Length).onComplete = OnComplete;
        }

        private void OnComplete()
        {
            currentTarget++;
            
            if (currentTarget >= target.Length)
            {
                currentTarget = 0;
            }
            
            transform.DOMove(target[currentTarget].position, TimeToMove / target.Length).onComplete = OnComplete;
        }

        private void OnDrawGizmos()
        {
            // draw lines between the points
            for (int i = 0; i < target.Length; i++)
            {
                if (i + 1 < target.Length)
                {
                    Gizmos.DrawLine(target[i].position, target[i + 1].position);
                }
                else
                {
                    Gizmos.DrawLine(target[i].position, target[0].position);
                }
            }
        }
    }
}