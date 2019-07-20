//
//  PerimeterTrainingExerciseViewController.swift
//  Geomagic
//
//  Created by Dany Hakim on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class PerimeterTrainingExerciseViewController: UIViewController {

    @IBOutlet weak var label9up: UILabel!
    @IBOutlet weak var label9down: UILabel!
    @IBOutlet weak var label5left: UILabel!
    @IBOutlet weak var label5right: UILabel!
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var boxResult: UIView!
    @IBOutlet weak var option26: UIView!
    @IBOutlet weak var option27: UIView!
    @IBOutlet weak var option28: UIView!
    @IBOutlet weak var label28: UILabel!
    @IBOutlet weak var box1label: UILabel!
    @IBOutlet weak var box2label: UILabel!
    @IBOutlet weak var box3label: UILabel!
    @IBOutlet weak var box4label: UILabel!
    @IBOutlet weak var boxResultLabel: UILabel!
    var label9upOrigin:CGPoint!
    var label9downOrigin:CGPoint!
    var label5leftOrigin:CGPoint!
    var label5rightOrigin:CGPoint!
    var option26Origin:CGPoint!
    var option27Origin:CGPoint!
    var option28Origin:CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hilangin isi kotak dan kotak opsi
        box1label.isHidden = true
         box2label.isHidden = true
         box3label.isHidden = true
         box4label.isHidden = true
         boxResultLabel.isHidden = true
         option26.isHidden = true
         option27.isHidden = true
         option28.isHidden = true
        view.bringSubviewToFront(label9up)
        
        view.bringSubviewToFront(label9down)
        
        view.bringSubviewToFront(label5left)
        
        view.bringSubviewToFront(label5right)
        view.bringSubviewToFront(box1label)
        view.bringSubviewToFront(box2label)
        view.bringSubviewToFront(box3label)
        view.bringSubviewToFront(box4label)
        
            view.bringSubviewToFront(option28)
        label9upOrigin = label9up.frame.origin
        label9downOrigin = label9down.frame.origin
        label5leftOrigin = label5left.frame.origin
        label5rightOrigin = label5right.frame.origin
        option26Origin = option26.frame.origin
        option27Origin = option27.frame.origin
        option28Origin = option28.frame.origin

    }
 
    // MARK: Pan Gesture For Label and Option
    
    @IBAction func pan9up(_ sender: UIPanGestureRecognizer) {
        //ambil untuk translasi
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
            //kalo bersinggungan dengan box1 s/d box4
            if label9up.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                                       self.label9up.alpha = 0.0
                        }
                                   box1label.text = label9up.text
                            box1label.isHidden = false
            }
            else if label9up.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9up.alpha = 0.0
                }
                box2label.text = label9up.text
                box2label.isHidden = false
            }
            else if label9up.frame.intersects(box3.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9up.alpha = 0.0
                }
                box3label.text = label9up.text
                box3label.isHidden = false
            }
            else if label9up.frame.intersects(box4.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9up.alpha = 0.0
                }
                box4label.text = label9up.text
                box4label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label9up.frame.origin = self.label9upOrigin
                }
                
            }
            showOption()
          default:
            break
        }
        
    }
    
    @IBAction func pan9down(_ sender: UIPanGestureRecognizer) {
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
            //kalo bersinggungan dengan box1 s/d box4
            if label9down.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9down.alpha = 0.0
                }
                box1label.text = label9down.text
                box1label.isHidden = false
            }
            else if label9down.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9down.alpha = 0.0
                }
                box2label.text = label9down.text
                box2label.isHidden = false
            }
            else if label9down.frame.intersects(box3.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9down.alpha = 0.0
                }
                box3label.text = label9down.text
                box3label.isHidden = false
            }
            else if label9down.frame.intersects(box4.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label9down.alpha = 0.0
                }
                box4label.text = label9down.text
                box4label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label9down.frame.origin = self.label9downOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func pan5right(_ sender: UIPanGestureRecognizer) {
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
            //kalo bersinggungan dengan box1 s/d box4
            if label5right.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5right.alpha = 0.0
                }
                box1label.text = label5right.text
                box1label.isHidden = false
            }
            else if label5right.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5right.alpha = 0.0
                }
                box2label.text = label5right.text
                box2label.isHidden = false
            }
            else if label5right.frame.intersects(box3.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5right.alpha = 0.0
                }
                box3label.text = label5right.text
                box3label.isHidden = false
            }
            else if label5right.frame.intersects(box4.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5right.alpha = 0.0
                }
                box4label.text = label5right.text
                box4label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label5right.frame.origin = self.label5rightOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func pan5left(_ sender: UIPanGestureRecognizer) {
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
            //kalo bersinggungan dengan box1 s/d box4
            if label5left.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5left.alpha = 0.0
                }
                box1label.text = label5left.text
                box1label.isHidden = false
            }
            else if label5left.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5left.alpha = 0.0
                }
                box2label.text = label5left.text
                box2label.isHidden = false
            }
            else if label5left.frame.intersects(box3.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5left.alpha = 0.0
                }
                box3label.text = label5left.text
                box3label.isHidden = false
            }
            else if label5left.frame.intersects(box4.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5left.alpha = 0.0
                }
                box4label.text = label5left.text
                box4label.isHidden = false
            }
            else{
                //kalo ga ke salah satu kotak,balik ke awal
                UILabel.animate(withDuration: 0.3) {
                    self.label5left.frame.origin = self.label5leftOrigin
                }
                
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func pan26option(_ sender: UIPanGestureRecognizer) {
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
            if option26.frame.intersects(boxResult.frame){
                boxResult.shakeResult()
                self.option26.frame.origin = self.option26Origin
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option26.frame.origin = self.option26Origin
                }
            }
        default:
            break
        }
        
    }
    
    @IBAction func pan27option(_ sender: UIPanGestureRecognizer) {
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
    
    @IBAction func pan28option(_ sender: UIPanGestureRecognizer) {
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
            if option28.frame.intersects(boxResult.frame){
                UIView.animate(withDuration: 0.3) {
                    self.option28.alpha = 0.0
                    self.label28.alpha = 0.0
                }
                boxResultLabel.text = label28.text
                boxResultLabel.isHidden = false
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option28.frame.origin = self.option28Origin
                }
            }
        default:
            break
        }
    }
    
// MARK: Show Option When Box is All Filled
    func showOption(){
        if box1label.text != "0" && box2label.text != "0" && box3label.text != "0" && box4label.text != "0" {
            option26.isHidden = false
            option27.isHidden = false
            option28.isHidden = false
        }
        

        
    }
    
    
}

