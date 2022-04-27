//
//  Question.swift
//  Quizzler
//
//  Created by Muhammad Ziddan Hidayatullah on 26/04/22.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
