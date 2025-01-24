using System;
using BubbleSalvage;
using UnityEngine;
using UnityEngine.Events;

public class PlayerGunView : MonoBehaviour
{
    readonly Plane _inputPlane = new(Vector3.forward, Vector3.zero);
    public float GunRadius = .5f;
    public float GunReach = 5f;
    public float GunStrengthMax = 100;
    public float GunStrengthMin = 1;

    public UnityEvent<bool> SetFiringActive;
    public UnityEvent OnFiring;
    public UnityEvent OnNotFiring;

    bool _isFiringActive;
    Vector2 _aimDirection;
    readonly RaycastHit[] _resultsBuffer = new RaycastHit[20];

    void OnDrawGizmos()
    {
        Gizmos.DrawRay(transform.position, GetAimDirection());
    }

    void Update()
    {
        _aimDirection = GetAimDirection();
        transform.rotation = Quaternion.LookRotation(_aimDirection, Vector3.up);

        var firingActive = Input.GetButton("Fire1");

        if (_isFiringActive != firingActive)
        {
            _isFiringActive = firingActive;
            (_isFiringActive ? OnFiring : OnNotFiring)?.Invoke();
            SetFiringActive?.Invoke(_isFiringActive);
            Debug.Log($"Firing {_isFiringActive}");
        }
    }

    void FixedUpdate()
    {
        if (_isFiringActive)
        {
            FiringUpdate();
        }
    }

    void FiringUpdate()
    {
        var size = Physics.SphereCastNonAlloc(transform.position, GunRadius, _aimDirection.normalized, _resultsBuffer);
        if (size > _resultsBuffer.Length)
        {
            Debug.LogWarning("more results than buffer size..");
        }

        var originPos = transform.position;

        foreach (var hit in _resultsBuffer)
        {
            var hitRigidbody = hit.rigidbody;
            
            if (hitRigidbody == null)
            {
                continue;
            }

            if (!hitRigidbody.CompareTag(PlayerView.PlayerTag))
            {
                var deltaPos = hitRigidbody.transform.position - originPos;
                var distanceFactor = Mathf.InverseLerp(0, GunReach, deltaPos.magnitude);
                var strength = Mathf.Lerp(GunStrengthMin, GunStrengthMax, distanceFactor); 
                hitRigidbody.AddForce(strength * deltaPos.normalized);
            }
        }
    }

    Vector2 GetAimDirection()
    {
        if (Input.GetJoystickNames().Length > 0)
        {
            var vertical = Input.GetAxis("LookVertical");
            var horizontal = Input.GetAxis("LookHorizontal");
            return new Vector2(horizontal, vertical).normalized;
        }

        var mouseRay = UnityEngine.Camera.main.ScreenPointToRay(Input.mousePosition);
        if (!_inputPlane.Raycast(mouseRay, out float enter))
        {
            Debug.LogError("no hit ray whut");
            return default;
        }

        var currentPos = transform.position;
        return (mouseRay.GetPoint(enter) - currentPos).normalized;
    }
}