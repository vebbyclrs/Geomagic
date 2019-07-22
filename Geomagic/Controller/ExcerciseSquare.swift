//
//  ExcerciseSquare.swift
//  Geomagic
//
//  Created by Ni Made Ananda Ayu Permata on 16/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class ExcerciseSquareViewController: UIViewController {
    
    let questions = SquareQuestion()
    var pickedValue: String = "d"
    var score: Int = 0
    var numOfQuestion:Int = 0
    
    
    
    
    @IBOutlet weak var backgroundQuestion: UIView!
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var kllButton1: OptionLatihanButton!
    @IBOutlet weak var kllButton2: OptionLatihanButton!
    @IBOutlet weak var kllButton3: OptionLatihanButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var length1Label: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var lanjutButton: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        updateUI()
        nextQuestion()
        
    }
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedValue = "a"
        }
        else if sender.tag == 2 {
            pickedValue = "b"
        }
        else if sender.tag == 3 {
            pickedValue = "c"
        }
        
        let correctAnswer = questions.list[numOfQuestion].answer
        
        if correctAnswer == pickedValue && numOfQuestion <= 4{
            numOfQuestion += 1
            score += 25
            kllButton1.layer.backgroundColor = #colorLiteral(red: 0.8537505269, green: 0.7594997287, blue: 0.5828883052, alpha: 1)
            kllButton2.layer.backgroundColor = #colorLiteral(red: 0.8537505269, green: 0.7594997287, blue: 0.5828883052, alpha: 1)
            kllButton3.layer.backgroundColor = #colorLiteral(red: 0.8537505269, green: 0.7594997287, blue: 0.5828883052, alpha: 1)
            updateUI()
            nextQuestion()
        }
        else if correctAnswer != pickedValue {
            if sender.tag == 1{
                kllButton1.layer.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                kllButton1.shake()
            }
            else if sender.tag == 2{
                kllButton2.layer.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                kllButton2.shake()
            }
            else if sender.tag == 3{
                kllButton3.layer.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                kllButton3.shake()
            }
            //            score -= 5
        }
       
        
    }
    
    
    //    @IBAction func clickKll1(_ sender: UIButton) {
    //        sender.shake()
    //        kllButton1.layer.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    //    }
    //
    //    @IBAction func clickKll2(_ sender: UIButton) {
    //        //sender.flash()
    //        score += 10
    //        kllButton1.setTitle("16", for: .normal)
    //        kllButton2.setTitle("17", for: .normal)
    //        kllButton3.setTitle("18", for: .normal)
    //        questionLabel.text = "Berapakah luas persegi di samping?"
    //        kllButton1.layer.backgroundColor = #colorLiteral(red: 0.8799760342, green: 0.6950199008, blue: 0.6898319721, alpha: 1)
    //        kllButton3.layer.backgroundColor = #colorLiteral(red: 0.8799760342, green: 0.6950199008, blue: 0.6898319721, alpha: 1)
    //
    //    }
    
    //    @IBAction func clickKll3(_ sender: UIButton) {
    //        sender.shake()
    //        kllButton3.layer.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    //    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        
        //        length2Label.text = "\(questions.list[numOfQuestion].lengthInt)"
        //        length3Label.text = "\(questions.list[numOfQuestion].lengthInt)"
        
    }
    func nextQuestion(){
        if numOfQuestion < 4 {
            questionNumber.text = "Soal \(numOfQuestion+1)"
            lengthLabel.text = "\(questions.list[numOfQuestion].lengthInt2)"
            length1Label.text = "\(questions.list[numOfQuestion].lengthInt1)"
            kllButton1.setTitle("\(questions.list[numOfQuestion].choice1)", for: .normal)
            kllButton2.setTitle("\(questions.list[numOfQuestion].choice2)", for: .normal)
            kllButton3.setTitle("\(questions.list[numOfQuestion].choice3)", for: .normal)
            //        lengthLabel[1].text = "\(questions.list[numOfQuestion+1].lengthInt)"
            //        lengthLabel[2].text = "\(questions.list[numOfQuestion+1].lengthInt)"
            //        lengthLabel[3].text = "\(questions.list[numOfQuestion+1].lengthInt)"
            if numOfQuestion%2 == 0{
                questionLabel.text = "Berapakah keliling persegi disamping?"
            }
            else{
                questionLabel.text = "Berapakah luas persegi disamping?"
            }
            
        }
        else {
            lanjutButton.isHidden = false
            lanjutButton.flash()
            questionLabel.isHidden = true
            lengthLabel.isHidden = true
            length1Label.isHidden = true
            kllButton1.isHidden = true
            kllButton2.isHidden = true
            kllButton3.isHidden = true
            backgroundQuestion.isHidden = true
        }
    }
    @IBAction func goBack(_ sender: Any) {
        self.performSegueToReturnBack()
    }
    func checkAnswer(){
        //        let correctAnswer = questions.list[numOfQuestion].answer
        //
        //        if correctAnswer == pickedValue{
        //            numOfQuestion += 1
        //            score += 10
        //        }
        //        else {
        //            score -= 5
        //        }
    }
    
    
    
}
