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
        list.append(Question(num1: 7, num2: 4, correctAnswer: "a", pil1: "22", pil2: "24", pil3: "28"))
        list.append(Question(num1: 7, num2: 4,  correctAnswer: "c", pil1: "24", pil2: "26", pil3: "28"))
        list.append(Question(num1: 9, num2: 3,  correctAnswer: "c", pil1: "18", pil2: "20", pil3: "24"))
        list.append(Question(num1: 9, num2: 3,  correctAnswer: "b", pil1: "18", pil2: "27", pil3: "36"))
        //        list.append(Question(num: 9, correctAnswer: "a", pil1: "36", pil2: "27", pil3: "18"))
        //        list.append(Question(num: 9, correctAnswer: "c", pil1: "18", pil2: "36", pil3: "81"))
        //        list.append(Question(num: 10, correctAnswer: "a", pil1: "40", pil2: "50", pil3: "100"))
        //        list.append(Question(num: 10, correctAnswer: "c", pil1: "40", pil2: "70", pil3: "100"))
        //        list.append(Question(num: 11, correctAnswer: "c", pil1: "11", pil2: "22", pil3: "44"))
        //        list.append(Question(num: 11, correctAnswer: "b", pil1: "44", pil2: "121", pil3: "144"))
        
    }
}
