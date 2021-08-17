//
//  QuestionBank.swift
//  GameTwo
//
//  Created by Арсений Трошин on 09.08.2020.
//  Copyright © 2020 Арсений Трошин. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    
    init(){
        list.append(Question(image: "AT&T", choiceA: "NBC", choiceB: "AT&T", choiceC: "PBS", corAnswer: 2))
        list.append(Question(image: "General Electric", choiceA: "General Electric", choiceB: "NBC", choiceC: "AT&T", corAnswer: 1))
        list.append(Question(image: "NBC", choiceA: "PBS", choiceB: "NBC", choiceC: "General Electric", corAnswer: 2))
        list.append(Question(image: "PBS", choiceA: "AT&T", choiceB: "General Electric", choiceC: "PBS", corAnswer: 3))
    }
}
