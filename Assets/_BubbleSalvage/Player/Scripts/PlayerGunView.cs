using System;
using System.Collections.Generic;
using System.Linq;
using BubbleSalvage;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

public class PlayerGunView : MonoBehaviour
{
    readonly Plane _inputPlane = new(Vector3.forward, Vector3.zero);
    public float GunRadius = .5f;
    public float GunReach = 5f;
    public float GunOffset = .5f;
    public float GunStrengthMax = 100;
    public float GunStrengthMin = 1;

    public UnityEvent<bool> SetFiringActive;
    public UnityEvent OnFiring;
    public UnityEvent OnNotFiring;

    bool _isFiringActive;
    Vector2 _aimDirection;
    bool _isGamePadActive;
    readonly RaycastHit[] _resultsBuffer = new RaycastHit[20];
    Camera _mainCamera;

    void Awake()
    {
        _mainCamera = Camera.main;
    }

    void OnDrawGizmos() => DrawSphereCastGizmo(transform.position + (Vector3)(_aimDirection.normalized * GunOffset),
        _aimDirection, GunRadius, GunReach, Color.red);

    void Update()
    {
        CheckGamepad();
        var aimDirection = GetAimDirection();
        if (aimDirection.magnitude > .01f)
            _aimDirection = aimDirection;

        transform.rotation = Quaternion.LookRotation(_aimDirection, Vector3.up);

        var firingActive = GetFiringInputPressed();

        if (_isFiringActive != firingActive)
        {
            _isFiringActive = firingActive;
            (_isFiringActive ? OnFiring : OnNotFiring)?.Invoke();
            SetFiringActive?.Invoke(_isFiringActive);
        }
    }

    void CheckGamepad()
    {
        if (Input.GetJoystickNames().Length < 1)
        {
            _isGamePadActive = false;
            return;
        }

        if (_isGamePadActive)
        {
            if (Keyboard.current?.anyKey.isPressed ?? false)
            {
                _isGamePadActive = false;
            }
        }
        else
        {
            _isGamePadActive = Gamepad.current?.allControls.Any(c => c.IsPressed()) ?? false;
        }
    }

    bool GetFiringInputPressed()
    {
        return _isGamePadActive
            ? _aimDirection.magnitude > .1f 
            : Input.GetButton("Fire1");
    }

    void FixedUpdate()
    {
        if (_isFiringActive)
            FiringUpdate();
    }

    void FiringUpdate()
    {
        var hits = Physics.SphereCastNonAlloc(
            transform.position,
            GunRadius,
            _aimDirection.normalized,
            _resultsBuffer,
            GunReach);

        if (hits > _resultsBuffer.Length)
        {
            Debug.LogWarning("more results than buffer size..");
            hits = _resultsBuffer.Length;
        }

        var originPos = transform.position + (Vector3)(_aimDirection.normalized * GunOffset);

        var pushedRigidbodies = new HashSet<Rigidbody>();
        for (var index = 0; index < hits; index++)
        {
            var hit = _resultsBuffer[index];
            var hitRigidbody = hit.rigidbody;

            if (hitRigidbody == null ||
                hitRigidbody.CompareTag(PlayerView.PlayerTag) ||
                !pushedRigidbodies.Add(hitRigidbody))
            {
                continue;
            }

            var deltaPos = hitRigidbody.transform.position - originPos;
            var distanceFactor = Mathf.InverseLerp(0, GunReach, deltaPos.magnitude);
            var strength = Mathf.Lerp(GunStrengthMin, GunStrengthMax, distanceFactor);
            hitRigidbody.AddForce(strength * deltaPos.normalized);
        }
    }

    Vector2 GetAimDirection()
    {
        if (_isGamePadActive)
        {
            var vertical = Input.GetAxis("LookVertical");
            var horizontal = Input.GetAxis("LookHorizontal");
            var vector2 = new Vector2(horizontal, vertical);
            return vector2.magnitude > .1f ? vector2.normalized : _aimDirection.normalized * .05f; // i feel dirty
        }

        var mouseRay = _mainCamera.ScreenPointToRay(Input.mousePosition);
        if (!_inputPlane.Raycast(mouseRay, out var enter))
        {
            Debug.LogError("no hit ray whut");
            return default;
        }

        var currentPos = transform.position;
        return (mouseRay.GetPoint(enter) - currentPos).normalized;
    }

    void DrawSphereCastGizmo(Vector3 origin, Vector3 direction, float radius, float maxDistance, Color color)
    {
        Gizmos.color = color;

        // Draw the sphere at the origin
        Gizmos.DrawWireSphere(origin, radius);

        // Draw the sphere at the endpoint
        Vector3 endPoint = origin + direction.normalized * maxDistance;
        Gizmos.DrawWireSphere(endPoint, radius);

        // Draw the connecting lines
        Vector3 offset = Vector3.Cross(direction.normalized, Vector3.up).normalized * radius;
        Gizmos.DrawLine(origin + offset, endPoint + offset);
        Gizmos.DrawLine(origin - offset, endPoint - offset);
        Gizmos.DrawLine(origin + Vector3.Cross(offset, direction.normalized),
            endPoint + Vector3.Cross(offset, direction.normalized));
        Gizmos.DrawLine(origin - Vector3.Cross(offset, direction.normalized),
            endPoint - Vector3.Cross(offset, direction.normalized));
    }
}