using System;
using TMPro;
using UnityEngine;

namespace BubbleSalvage
{
    public class ScorePanelController : MonoBehaviour
    {
        [SerializeField] private TMP_Text _scoreText;
        [SerializeField] private string _scorePrefix;
        [SerializeField] private string _scoreSuffix = "$";
        private int _currentScore;

        private void UpdateScore(CollectibleController collectible)
        {
            if (collectible == null) return;
            if (!collectible.CanScore) return;

            _currentScore += collectible.Score;
            _scoreText.text = _scorePrefix + _currentScore + _scoreSuffix;
            collectible.RemoveScore();
        }

        private void Awake()
        {
            _scoreText.text = _scorePrefix + "0" + _scoreSuffix;
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