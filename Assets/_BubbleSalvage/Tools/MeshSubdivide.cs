using NaughtyAttributes;
using UnityEngine;

namespace _BubbleSalvage.Tools
{
    [RequireComponent(typeof(MeshFilter), typeof(Renderer))]
    public class MeshSubdivide : MonoBehaviour
    {
        [Button]
        private void Subdivide()
        {
            Mesh current = GetComponent<MeshFilter>().sharedMesh;
            Mesh newMesh = Instantiate(current);
            newMesh.name = current.name;
            MeshHelper.Subdivide4(newMesh);
            GetComponent<MeshFilter>().sharedMesh = newMesh;
        }
    }
}