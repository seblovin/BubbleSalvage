using UnityEngine;
using UnityEngine.Events;

namespace BubbleSalvage
{
    public class PlayerView : MonoBehaviour
    {
        public const string PlayerTag = "Player";

        public PlayerOxygenManager PlayerOxygenManager;
        public Rigidbody RBody;
        public float MovementSpeed = 10;
        public float RotationSpeed = 10;

        public float SurfaceHeight = 20;

        public Vector3 IdleRotation;

        public UnityEvent OnIdle;
        public UnityEvent OnMoving;

        Vector2 _currentMoveDirection;
        bool _isIdle;

        void FixedUpdate()
        {
            if (PlayerOxygenManager.IsDead)
                return;

            MovementUpdate();
            if (RBody.position.y > SurfaceHeight)
            {
                RBody.position = new Vector3(
                    RBody.position.x,
                    Mathf.Min(RBody.position.y, SurfaceHeight),
                    RBody.position.z);
                var velocity = RBody.linearVelocity;
                velocity.y = Mathf.Min(velocity.y, 0);
                RBody.linearVelocity = velocity;
            }
        }

        void Update()
        {
            if (PlayerOxygenManager.IsDead)
                return;

            var magnitude = _currentMoveDirection.magnitude;

            var isIdle = magnitude < .01f;
            var idleRotation = Quaternion.Euler(IdleRotation);
            var targetRotation =
                isIdle
                    ? idleRotation
                    : Quaternion.LookRotation(_currentMoveDirection, Vector3.up);

            var lerpedRotation = Quaternion.Lerp(idleRotation, targetRotation, magnitude);
            transform.rotation = Quaternion.Lerp(transform.rotation, lerpedRotation, RotationSpeed * Time.deltaTime);

            if (isIdle != _isIdle)
            {
                _isIdle = isIdle;
                (isIdle ? OnIdle : OnMoving).Invoke();
            }
        }

        void MovementUpdate()
        {
            var inputV2 = GetInputVector();
            var mass = RBody.mass;
            _currentMoveDirection = inputV2;
            RBody.AddForce(inputV2 * (MovementSpeed * mass));
        }

        Vector2 GetInputVector()
        {
            var moveHorizontal = Input.GetAxis("Horizontal");
            var moveVertical = Input.GetAxis("Vertical");
            return Vector2.ClampMagnitude(new Vector2(moveHorizontal, moveVertical), 1);
        }
    }
}