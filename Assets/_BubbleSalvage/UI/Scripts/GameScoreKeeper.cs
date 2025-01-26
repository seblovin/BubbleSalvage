using System;
using TMPro;
using UnityEngine;

namespace BubbleSalvage
{
    public class GameScoreKeeper : MonoBehaviour
    {
        [SerializeField] private ScorePanelController _scorePanelController;
        [SerializeField] private TMP_Text[] _labels= new TMP_Text[5];
        public static int[] _topScores = new int[5];
        
        private void Start()
        {
            // subscribe to death event
            PlayerOxygenManager.Instance.OnDead.AddListener(UpdateScore);
            
            // load top scores
            for (int i = 0; i < _topScores.Length; i++)
            {
                _topScores[i] = PlayerPrefs.GetInt($"TopScore{i}", 0);
            }
        }

        private void OnDestroy()
        {
            // unsubscribe from death event
            PlayerOxygenManager.Instance.OnDead.RemoveListener(UpdateScore);
        }

        private void UpdateScore()
        {
            // save current score ordered in top scores
            for (int i = 0; i < _topScores.Length; i++)
            {
                // check if current score is higher than top score
                var currentScore = _scorePanelController.CurrentScore;
                
                if (currentScore > _topScores[i])
                {
                    // move top scores down
                    for (int j = _topScores.Length - 1; j > i; j--)
                    {
                        _topScores[j] = _topScores[j - 1];
                    }
                    // save current score
                    PlayerPrefs.SetInt($"TopScore{i}", currentScore);
                    // update top score
                    _topScores[i] = currentScore;

                    UpdateLabels();
                    return;
                }
            }

            
        }

        private void UpdateLabels()
        {
            // update labels
            for (int i = 0; i < _topScores.Length; i++)
            {
                _labels[i].text = _topScores[i].ToString();
            }
        }
    }
}