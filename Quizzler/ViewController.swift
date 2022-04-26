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
        "Cow is a Mammal",
        "Chicken has four leg",
        "4 modulo 2 is 0"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        print("questionNumber :\(questionNumber)")
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
            print("called")
            updateUI()
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
}
