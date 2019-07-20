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
        view.bringSubviewToFront(box1label)
        view.bringSubviewToFront(box2label)
        view.bringSubviewToFront(box3label)
        view.bringSubviewToFront(box4label)
        label9upOrigin = label9up.frame.origin
        label9downOrigin = label9down.frame.origin
        label5leftOrigin = label5left.frame.origin
        label5rightOrigin = label5right.frame.origin

    }
 
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
            
            
            
//            if label4.frame.intersects(box1.frame) {
//                UILabel.animate(withDuration: 0.3) {
//                    self.label4.alpha = 0.0
//                }
//                boxLabel1.text = label4.text
//                boxLabel1.isHidden = false
//            }else if label4.frame.intersects(box2.frame){
//                UILabel.animate(withDuration: 0.3) {
//                    self.label4.alpha = 0.0
//                }
//                boxLabel2.text = label4.text
//                boxLabel2.isHidden = false
//            }
//            else{
//                //kalo ga masuk ke boxnya balik lagi ke tempat semula
//                UILabel.animate(withDuration: 0.3) {
//                    self.label4.frame.origin = self.label4Origin
//                }
//            }
//            showOption()
          default:
            break
        }
        
    }
    
    @IBAction func pan9down(_ sender: UIPanGestureRecognizer) {
    }
    
    @IBAction func pan5right(_ sender: UIPanGestureRecognizer) {
    }
    
    @IBAction func pan5left(_ sender: UIPanGestureRecognizer) {
    }
    
}
