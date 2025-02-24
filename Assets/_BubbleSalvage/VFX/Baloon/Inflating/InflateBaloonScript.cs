using UnityEngine;

public class SetShaderGraphProperties : MonoBehaviour
{
    // Reference to the material with the Shader Graph
    private Material material;

    // The names of the properties in the Shader Graph
    private const string AutoPlaybackProperty = "_B_autoPlayback";
    private const string GameTimeProperty = "_gameTimeAtFirstFrame";

    // Time to wait before setting _B_autoPlayback to false
    private float timeToStopPlayback = 1.0f;
    private float timer = 0.0f;

    // Called when the object is enabled
    private void OnEnable()
    {
        // Get the material from the Renderer component of the object
        Renderer renderer = GetComponent<Renderer>();
        if (renderer != null)
        {
            // Ensure we get the material instance and not just a reference to the shared material
            material = renderer.material;

            // Check if the material is valid
            if (material != null)
            {
                // Set the boolean value in the Shader Graph to true
                material.SetInt(AutoPlaybackProperty, 1); // 1 represents true

                // Set the _gameTimeAtFirstFrame property to the current game time
                material.SetFloat(GameTimeProperty, Time.time); // Time.time gives the time since the game started
            }
            else
            {
                Debug.LogError("Material not found on the object!");
            }
        }
        else
        {
            Debug.LogError("Renderer component not found on the object!");
        }
    }

    // Called every frame
    private void Update()
    {
        // Increment the timer by the time elapsed since the last frame
        timer += Time.deltaTime;

        // After 1 second, set the _B_autoPlayback property to false
        if (timer >= timeToStopPlayback)
        {
            if (material != null)
            {
                material.SetInt(AutoPlaybackProperty, 0); // 0 represents false
            }

            // Optionally, stop the update (or reset the timer if you want the behavior to repeat)
            enabled = false; // Disables the Update method to stop the timer
        }
    }
    private void OnDisable()
    { 
        enabled = true;
        material.SetInt(AutoPlaybackProperty, 0);
        timer = 0.0f;
    }
}