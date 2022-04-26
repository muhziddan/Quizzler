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
    
    let quiz = [
        Question(q: "Cow is a Mammal", a: "True"),
        Question(q: "Chicken has four leg", a: "False"),
        Question(q: "4 modulo 2 is 0", a: "True"),
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if (sender.titleLabel?.text == quiz[questionNumber].answer) {
            sender.backgroundColor = UIColor.green
            if questionNumber <= quiz.count - 1 {
                questionNumber += 1
            }
//            else {
//                questionNumber = 0
//            }
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        updateUI()
    }
    
    func updateUI() {
        if questionNumber < quiz.count {
            questionLabel.text = quiz[questionNumber].text
            progressBar.setProgress(Float(questionNumber) / Float(quiz.count), animated: true)
        } else {
            progressBar.setProgress(1.0, animated: true)
            questionLabel.text = "Completed!"
            trueButton.isHidden = true
            falseButton.isHidden = true
        }
        UIView.animate(withDuration: 0.3, delay: 0.2, options: .curveEaseIn, animations: {
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        }, completion: nil)
    }
}
