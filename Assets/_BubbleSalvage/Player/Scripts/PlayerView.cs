using UnityEngine;
using UnityEngine.Serialization;

namespace BubbleSalvage
{
    public class PlayerView : MonoBehaviour
    {
        [FormerlySerializedAs("rBody")] public Rigidbody RBody;
        public float MovementSpeed = 10;

        Vector2 _lastPosition;


        void FixedUpdate()
        {
            MovementUpdate();
            LookAtUpdate();
        }

        void LookAtUpdate()
        {
            
        }

        void MovementUpdate()
        {
            var inputV2 = GetInputVector();
            var deltaTime = Time.deltaTime;
            RBody.AddForce(inputV2 * (MovementSpeed * deltaTime));
        }

        Vector2 GetInputVector()
        {
            var moveHorizontal = Input.GetAxis("Horizontal");
            var moveVertical = Input.GetAxis("Vertical");
            return new Vector2(moveHorizontal, moveVertical);
        }
    }
}