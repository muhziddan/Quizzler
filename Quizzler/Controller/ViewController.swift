//
//  ViewController.swift
//  Quizzler
//
//  Created by Muhammad Ziddan Hidayatullah on 26/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizLogic = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        guard let buttonText = sender.titleLabel?.text else { return }
        
        if buttonText == "Start the quiz"{
            quizLogic.nextQuiz()
        } else if buttonText == "Start Again" {
            quizLogic.reset()
        } else {
            let userAnswer = quizLogic.checkAnswer(text: buttonText)
            
            if userAnswer {
                sender.backgroundColor = UIColor.green
            } else {
                sender.backgroundColor = UIColor.red
            }
            
            quizLogic.nextQuiz()
        }
        
        updateUI()
    }
    
    func updateUI() {
        if quizLogic.questionNumber == -1 {
            scoreLabel.isHidden = true
            questionLabel.text = "Welcome to Quizzler! Let's start the quiz!"
            trueButton.setTitle("Start the quiz", for: UIControl.State.normal)
            falseButton.isHidden = true
        } else if quizLogic.questionNumber < quizLogic.quiz.count {
            scoreLabel.isHidden = false
            trueButton.setTitle("True", for: UIControl.State.normal)
            falseButton.isHidden = false
            questionLabel.text = quizLogic.getQuestionText()
            scoreLabel.text = "Score \(quizLogic.getScore())"
            progressBar.setProgress(quizLogic.getProgess(), animated: true)
        } else {
            progressBar.setProgress(1.0, animated: true)
            questionLabel.text = "Completed!"
            trueButton.setTitle("Start Again", for: UIControl.State.normal)
            falseButton.isHidden = true
        }
        
        UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseIn, animations: {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        }, completion: nil)
    }
}
