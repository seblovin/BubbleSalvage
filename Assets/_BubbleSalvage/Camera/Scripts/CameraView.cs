using BubbleSalvage;
using UnityEngine;

public class CameraView : MonoBehaviour
{
    public PlayerView PlayerView;
    public float CameraMoveSpeed = 5f;
    public Vector3 CameraPositionOffset = new(0f, 5, -10f);
    
    void FixedUpdate()
    {
        var position = PlayerView.RBody.position;
        transform.position = Vector3.Lerp(transform.position, position + CameraPositionOffset, Time.deltaTime * CameraMoveSpeed);
        transform.rotation = Quaternion.LookRotation(-CameraPositionOffset, Vector3.up);
    }
}
