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

        [SerializeField]
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
            
            RotationUpdate();
        }

        // void Update()
        // {
        //     RotationUpdate();
        // }

        void RotationUpdate()
        {
            if (PlayerOxygenManager.IsDead)
                return;

            var moveMagnitude = _currentMoveDirection.magnitude;

            var isIdle = moveMagnitude < .1f;
            var idleRotation = Quaternion.Euler(IdleRotation);

            Quaternion targetRotation;

            if (isIdle)
            {
                targetRotation = idleRotation;
            }
            else
            {
                var moveX = _currentMoveDirection.x;
                var lookUp = Mathf.Abs(moveX) * Vector3.up;

                var moveY = _currentMoveDirection.y;
                lookUp += moveY > 0 ? moveY * Vector3.forward : -moveY * Vector3.back;
                targetRotation = Quaternion.LookRotation(_currentMoveDirection, lookUp.normalized);
            }
            
            var lerpedRotation = Quaternion.Lerp(idleRotation, targetRotation, moveMagnitude);
            var lerpValue = RotationSpeed * Time.deltaTime;
            transform.rotation = Quaternion.Lerp(transform.rotation, lerpedRotation, lerpValue);

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

        static Vector2 GetInputVector()
        {
            if (MobileInputController.IsActive)
            {
                var joystick = MobileInputController.Instance.LeftJoystick;
                return joystick.Direction;
            }

            var moveHorizontal = Input.GetAxis("Horizontal");
            var moveVertical = Input.GetAxis("Vertical");
            return Vector2.ClampMagnitude(new Vector2(moveHorizontal, moveVertical), 1);
        }
    }
}