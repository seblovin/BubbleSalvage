using BubbleSalvage;
using UnityEngine;

public class Camera : MonoBehaviour
{
    public PlayerView PlayerView;
    public float CameraMoveSpeed = 5f;
    public float CameraRotateSpeed = 5f;
    public Vector3 CameraPositionOffset = new(0f, 5, -10f);
    
    void Update()
    {
        var playerViewTransform = PlayerView.transform;
        transform.position = Vector3.Lerp(transform.position, playerViewTransform.position + CameraPositionOffset, Time.deltaTime * CameraMoveSpeed);
        
        var targetRotation = Quaternion.LookRotation(playerViewTransform.forward, playerViewTransform.up);
        transform.LookAt(playerViewTransform);
    }
}
