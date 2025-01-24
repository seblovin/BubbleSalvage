using UnityEngine;

namespace BubbleSalvage
{
    public class PlayerView : MonoBehaviour
    {
        public Rigidbody rBody;
        public float MovementSpeed = 10;


        void FixedUpdate()
        {
            MovementUpdate();
            LookAtUpdate();
        }

        void LookAtUpdate()
        {
            throw new System.NotImplementedException();
        }

        void MovementUpdate()
        {
            var inputV2 = GetInputVector();
            var deltaTime = Time.deltaTime;
            rBody.AddForce(inputV2 * (MovementSpeed * deltaTime));
        }

        Vector2 GetInputVector()
        {
            var moveHorizontal = Input.GetAxis("Horizontal");
            var moveVertical = Input.GetAxis("Vertical");
            return new Vector2(moveHorizontal, moveVertical);
        }
    }
}