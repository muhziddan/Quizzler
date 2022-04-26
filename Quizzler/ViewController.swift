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
        ["Cow is a Mammal", "True"],
        ["Chicken has four leg", "False"],
        ["4 modulo 2 is 0", "True"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        print("questionNumber :\(questionNumber) \(quiz[questionNumber][1])")
        if (sender.titleLabel?.text == quiz[questionNumber][1]) {
            if questionNumber < quiz.count - 1 {
                questionNumber += 1
                print("called")
            } else {
                questionNumber = 0
            }
            updateUI()
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}
