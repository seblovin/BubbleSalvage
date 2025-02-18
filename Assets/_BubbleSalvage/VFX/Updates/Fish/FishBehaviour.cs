using UnityEngine;

public class MoveObject : MonoBehaviour
{
    public float moveDistance = 5f; // The distance to move in the X direction
    public float moveDuration = 2f; // Time it takes to move from start to target position
    public float stopDuration = 1f; // Time to stop before moving back
    private Vector3 initialPosition; // The initial position of the object

    private bool isMovingForward = true; // Flag to control the movement direction
    private bool isWaitingAtStart = false; // Flag to check if the object is waiting at the start position
    private float timer = 0f; // Timer to track the progress of the movement and stopping periods

    void Start()
    {
        initialPosition = transform.position; // Store the initial position of the object
    }

    void Update()
    {
        timer += Time.deltaTime; // Update the timer every frame

        // If we are moving forward
        if (isMovingForward)
        {
            if (timer < moveDuration) // Move the object over the moveDuration period
            {
                float moveProgress = timer / moveDuration; // Calculate how much we have moved
                transform.position = Vector3.Lerp(initialPosition, initialPosition + Vector3.right * moveDistance, moveProgress);
            }
            else
            {
                // Once movement is complete, stop for a while
                isMovingForward = false;
                timer = 0f; // Reset the timer for the stop duration
            }
        }
        // If we are moving back to the initial position
        else if (!isWaitingAtStart)
        {
            if (timer < stopDuration) // Wait for the stopDuration period
            {
                // Do nothing, just wait
            }
            else if (timer < stopDuration + moveDuration) // Move the object back to the initial position
            {
                float moveProgress = (timer - stopDuration) / moveDuration;
                transform.position = Vector3.Lerp(initialPosition + Vector3.right * moveDistance, initialPosition, moveProgress);
            }
            else
            {
                // After returning to the initial position, stop for a while again
                isWaitingAtStart = true; // Start waiting at the initial position
                timer = 0f; // Reset the timer for the waiting period at start
            }
        }
        else // If we are waiting at the start position
        {
            if (timer >= stopDuration) // Once stopDuration is over, start the next cycle
            {
                isWaitingAtStart = false;
                isMovingForward = true; // Start moving forward again
                timer = 0f; // Reset the timer for the next movement cycle
            }
        }
    }
}
