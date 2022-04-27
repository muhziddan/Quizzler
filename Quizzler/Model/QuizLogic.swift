//
//  QuizLogic.swift
//  Quizzler
//
//  Created by Muhammad Ziddan Hidayatullah on 27/04/22.
//

import Foundation

struct QuizLogic {
    
    var questionNumber = -1
    var score = 0
    
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
    
    mutating func checkAnswer(text inputText: String) -> Bool{
        if (inputText == quiz[questionNumber].answer) {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuiz() {
        if questionNumber <= quiz.count - 1 {
            questionNumber += 1
        }
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgess() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func reset() {
        questionNumber = 0
        score = 0
    }
}
