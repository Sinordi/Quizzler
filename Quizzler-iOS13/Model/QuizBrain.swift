//
//  QuizeBrain.swift
//  Quizzler-iOS13
//
//  Created by Сергей Кривошапко on 29.05.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct QuizBrain {
    
    let quiz = [
        Question(text: "Нужно ли изучать Swift?", answer: "True"),
        Question(text: "Английский совершенно не нужен для программистов?", answer: "False"),
        Question(text: "В данно приложении используется MVC?", answer: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(anwser userAnswer: String) -> Bool {
        
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
         let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if (questionNumber + 1) == quiz.count {
            questionNumber = 0
            score = 0
        } else {
            questionNumber = questionNumber + 1
        }
    }
}
