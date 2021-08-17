//
//  Answers.swift
//  GameTwo
//
//  Created by Арсений Трошин on 09.08.2020.
//  Copyright © 2020 Арсений Трошин. All rights reserved.
//

import Foundation

class Question {
    let questionImage: String
    let optionA: String
    let optionB: String
    let optionC: String
    let correctAnswer: Int
    
    init(image: String, choiceA: String, choiceB: String, choiceC: String, corAnswer: Int){
        questionImage = image
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        correctAnswer = corAnswer
    }
}
