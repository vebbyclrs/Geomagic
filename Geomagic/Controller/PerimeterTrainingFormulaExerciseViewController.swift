//
//  PerimeterTrainingFormulaExerciseViewController.swift
//  Geomagic
//
//  Created by Dany Hakim on 20/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class PerimeterTrainingFormulaExerciseViewController: UIViewController {

   
    @IBOutlet weak var label8up: UILabel!
    @IBOutlet weak var label8down: UILabel!
    @IBOutlet weak var label4left: UILabel!
    @IBOutlet weak var label4right: UILabel!
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var boxResult: UIView!
    @IBOutlet weak var box1label: UILabel!
    @IBOutlet weak var box2label: UILabel!
    @IBOutlet weak var boxResultLabel: UILabel!
    @IBOutlet weak var option24: UIView!
    @IBOutlet weak var option25: UIView!
    @IBOutlet weak var option27: UIView!
    @IBOutlet weak var label24: UILabel!
    var label8upOrigin:CGPoint!
    var label8downOrigin:CGPoint!
    var label4leftOrigin:CGPoint!
    var label4rightOrigin:CGPoint!
    var option24Origin:CGPoint!
    var option25Origin:CGPoint!
    var option27Origin:CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1label.isHidden = true
        box2label.isHidden = true
        boxResultLabel.isHidden = true
        option24.isHidden = true
        option25.isHidden = true
        option27.isHidden = true
        
        view.bringSubviewToFront(label8up)
        
        view.bringSubviewToFront(label8down)
        
        view.bringSubviewToFront(label4left)
        
        view.bringSubviewToFront(label4right)
        view.bringSubviewToFront(box1label)
        view.bringSubviewToFront(box2label)
        view.bringSubviewToFront(option24)
        
        // MARK: Set Label & Option Location
        label8upOrigin = label8up.frame.origin
        label8downOrigin = label8down.frame.origin
        label4leftOrigin = label4left.frame.origin
        label4rightOrigin = label4right.frame.origin
        option24Origin = option24.frame.origin
        option25Origin = option25.frame.origin
        option27Origin = option27.frame.origin
        
        view.initialView()
    }
   
   // MARK: Pan Gesture For Label and Option
    
    @IBAction func pan8up(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            //kalo bersinggungan dengan box1 dan box2
            if label8up.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label8up.alpha = 0.0
                }
                box1label.text = label8up.text
                box1label.isHidden = false
            }
            else if label8up.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label8up.alpha = 0.0
                }
                box2label.text = label8up.text
                box2label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label8up.frame.origin = self.label8upOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func pan8down(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            //kalo bersinggungan dengan box1 dan box2
            if label8down.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label8down.alpha = 0.0
                }
                box1label.text = label8down.text
                box1label.isHidden = false
            }
            else if label8down.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label8down.alpha = 0.0
                }
                box2label.text = label8down.text
                box2label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label8down.frame.origin = self.label8downOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    @IBAction func pan4left(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            //kalo bersinggungan dengan box1 dan box2
            if label4left.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label4left.alpha = 0.0
                }
                box1label.text = label4left.text
                box1label.isHidden = false
            }
            else if label4left.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label4left.alpha = 0.0
                }
                box2label.text = label4left.text
                box2label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label4left.frame.origin = self.label4leftOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func pan4right(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            //kalo bersinggungan dengan box1 dan box2
            if label4right.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label4right.alpha = 0.0
                }
                box1label.text = label4right.text
                box1label.isHidden = false
            }
            else if label4right.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label4right.alpha = 0.0
                }
                box2label.text = label4right.text
                box2label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label4right.frame.origin = self.label4rightOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func panOption24(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            if option24.frame.intersects(boxResult.frame){
                UIView.animate(withDuration: 0.3) {
                    self.option24.alpha = 0.0
                    self.label24.alpha = 0.0
                }
                boxResultLabel.text = label24.text
                boxResultLabel.isHidden = false
            performSegue(withIdentifier: "moveToTrainingEnd", sender: self)
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option24.frame.origin = self.option24Origin
                }
            }
        default:
            break
        }
    }
    @IBAction func panOption25(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            if option25.frame.intersects(boxResult.frame){
                boxResult.shakeResult()
                self.option25.frame.origin = self.option25Origin
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option25.frame.origin = self.option25Origin
                }
            }
        default:
            break
        }
    }
    @IBAction func panOption27(_ sender: UIPanGestureRecognizer) {
        guard let recognizerLabel = sender.view else {
            return
        }
        
        let translation = sender.translation(in: view)
        
        switch sender.state {
        case .began, .changed:
            recognizerLabel.center.x += translation.x
            recognizerLabel.center.y += translation.y
            sender.setTranslation(.zero, in: view)
        case .ended:
            if option27.frame.intersects(boxResult.frame){
                boxResult.shakeResult()
                self.option27.frame.origin = self.option27Origin
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option27.frame.origin = self.option27Origin
                }
            }
        default:
            break
        }
    }
    
    // MARK: Show Option When Box is All Filled
    func showOption(){
        if box1label.text != "0" && box2label.text != "0" {
            option24.isHidden = false
            option25.isHidden = false
            option27.isHidden = false
        }
        
        
        
    }
    
}
