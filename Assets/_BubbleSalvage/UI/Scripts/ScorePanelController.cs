using TMPro;
using UnityEngine;

namespace BubbleSalvage
{
    public class ScorePanelController : MonoBehaviour
    {
        [SerializeField] private TMP_Text _scoreText;
        [SerializeField] private int _timeToSync;
       
        private int _currentScore;
        private int _sourceScore;
        private int _displayScore;
        private float _currentTimer;

        public int CurrentScore => _currentScore;

        private void UpdateScore(CollectibleController collectible)
        {
            if (collectible == null) return;
            if (!collectible.CanScore) return;
            
            _sourceScore = _displayScore;
            _currentScore = CurrentScore + collectible.Score;
            collectible.RemoveScore();
        }

        private void Update()
        {
            if (_displayScore == CurrentScore)
            {
                return;
            }
            
            // update timer and display score
            _currentTimer += Time.deltaTime;
            // interpolate between display and current with current timer
            _displayScore = (int)Mathf.Lerp(_sourceScore, CurrentScore, _currentTimer / _timeToSync);
            _scoreText.text = $"{_displayScore}$";
            
            if (_currentTimer >= _timeToSync)
            {
                _currentTimer = 0;
            }
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