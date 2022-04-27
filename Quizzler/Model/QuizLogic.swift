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
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    mutating func checkAnswer(text inputText: String) -> Bool{
        if (inputText == quiz[questionNumber].correctAnswer) {
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
    
    func getMultipleChoice(nButton: Int) -> String {
        return quiz[questionNumber].answer[nButton]
    }
}
