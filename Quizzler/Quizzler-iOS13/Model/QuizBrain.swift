//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Apple on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text: "Apakah macbook lebih mahal dari windows?", answer: "True"),
        Question(text: "Apakah bumi datar?", answer: "False"),
        Question(text: "Apakah Rukun Islam Ada 6?", answer: "False"),
        Question(text: "Apakah harga yeezy mahal?", answer: "True"),
        Question(text: "Apakah Jordan Mahal?", answer: "True")
    ]
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer ==  quiz[questionNumber].answer{
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() ->Int{
        return score
    }
    
}
