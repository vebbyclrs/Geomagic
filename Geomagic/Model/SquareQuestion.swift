//
//  SquareQuestion.swift
//  Geomagic
//
//  Created by Ni Made Ananda Ayu Permata on 17/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation

class SquareQuestion {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        list.append(Question(num: 4, correctAnswer: "a", pil1: "16", pil2: "18", pil3: "12"))
        list.append(Question(num: 4, correctAnswer: "c", pil1: "14", pil2: "15", pil3: "16"))
        list.append(Question(num: 7, correctAnswer: "c", pil1: "26", pil2: "27", pil3: "28"))
        list.append(Question(num: 7, correctAnswer: "b", pil1: "28", pil2: "49", pil3: "70"))
        list.append(Question(num: 9, correctAnswer: "a", pil1: "36", pil2: "27", pil3: "18"))
        list.append(Question(num: 9, correctAnswer: "c", pil1: "18", pil2: "36", pil3: "81"))
        list.append(Question(num: 10, correctAnswer: "a", pil1: "40", pil2: "50", pil3: "100"))
        list.append(Question(num: 10, correctAnswer: "c", pil1: "40", pil2: "70", pil3: "100"))
        
    }
}
