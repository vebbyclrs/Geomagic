//
//  Question.swift
//  Geomagic
//
//  Created by Ni Made Ananda Ayu Permata on 17/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation

class Question {
    
    let lengthInt: Int
    let answer: String
    let choice1: String
    let choice2: String
    let choice3: String
    
    init(num: Int, correctAnswer: String, pil1: String, pil2: String, pil3: String) {
        lengthInt = num
        answer = correctAnswer
        choice1 = pil1
        choice2 = pil2
        choice3 = pil3
    }
    
}
