using UnityEngine;

namespace BubbleSalvage
{
    public class PlayerView : MonoBehaviour
    {
        public const string PlayerTag = "Player";

        public PlayerOxygenManager PlayerOxygenManager;
        public Rigidbody RBody;
        public float MovementSpeed = 10;
        public float RotationSpeed = 10;
        
        Vector2 _currentMoveDirection;
        
        void FixedUpdate()
        {
            if (PlayerOxygenManager.IsDead)
                return;
            
            MovementUpdate();
        }

        void Update()
        {
            if (PlayerOxygenManager.IsDead)
                return;
            
            var magnitude = _currentMoveDirection.magnitude;
            var defaultRotation = Quaternion.LookRotation(Vector3.up, transform.up);
            
            var targetRotation = magnitude > .01f
                ? Quaternion.LookRotation(_currentMoveDirection, Vector3.up) 
                : defaultRotation;
            
            var lerpedRoation = Quaternion.Lerp(defaultRotation, targetRotation, magnitude);
            transform.rotation = Quaternion.Lerp(transform.rotation, lerpedRoation, RotationSpeed * Time.deltaTime);
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