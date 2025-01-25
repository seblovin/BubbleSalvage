using TMPro;
using UnityEngine;

namespace BubbleSalvage
{
    public class ScorePanelController : MonoBehaviour
    {
        [SerializeField] private TMP_Text _scoreText;
        private int _currentScore;

        private void UpdateScore(CollectibleController collectible)
        {
            if (collectible == null) return;
            if (!collectible.CanScore) return;
            
            _currentScore += collectible.Score;
            _scoreText.text = _currentScore.ToString();
            collectible.RemoveScore();
        }

        private void Awake()
        {
            // subscribe to collectible controller event
            CollectibleController.OnHeightReached.AddListener(UpdateScore);
        }

        private void OnDestroy()
        {
            // unsubscribe from collectible controller event
            CollectibleController.OnHeightReached.RemoveListener(UpdateScore);
        }
    }
}