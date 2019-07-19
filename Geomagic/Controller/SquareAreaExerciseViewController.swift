//
//  SquareAreaExerciseViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 18/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaExerciseViewController: UIViewController {

    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var boxResult: UIView!
    @IBOutlet weak var boxLabel1: UILabel!
    @IBOutlet weak var boxLabel2: UILabel!
    @IBOutlet weak var boxLabelResult: UILabel!
    @IBOutlet weak var option20: UIView!
    @IBOutlet weak var option18: UIView!
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var option22: UIView!
    
    
    var label4Origin: CGPoint!
    var label5Origin: CGPoint!
    var option18Origin: CGPoint!
    var option20Origin: CGPoint!
    var option22Origin: CGPoint!
    
    var resultValue = 0{
        didSet{
            boxLabelResult.text = "\(resultValue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue = 0
        boxLabelResult.isHidden = true
        boxLabel1.isHidden = true
        boxLabel2.isHidden = true
        label4Origin = label4.frame.origin
        label5Origin = label5.frame.origin
        option18Origin = option18.frame.origin
        option20Origin = option20.frame.origin
        option22Origin = option22.frame.origin
        view.bringSubviewToFront(label4)
        view.bringSubviewToFront(label5)
        view.bringSubviewToFront(boxLabel1)
        view.bringSubviewToFront(boxLabel2)
        view.bringSubviewToFront(option20)
        option18.isHidden = true
        option22.isHidden = true
        option20.isHidden = true
        roundedOption()
    }
    
    @IBAction func pan4Handle(_ sender: UIPanGestureRecognizer) {
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
            if label4.frame.intersects(box1.frame) {
                UILabel.animate(withDuration: 0.3) {
                    self.label4.alpha = 0.0
                }
                boxLabel1.text = label4.text
                boxLabel1.isHidden = false
            }else if label4.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label4.alpha = 0.0
                }
                boxLabel2.text = label4.text
                boxLabel2.isHidden = false
            }
            else{
                //kalo ga masuk ke boxnya balik lagi ke tempat semula
                UILabel.animate(withDuration: 0.3) {
                    self.label4.frame.origin = self.label4Origin
                }
            }
            showOption()
        default:
            break
        }
        
    }
    
    @IBAction func pan5Handle(_ sender: UIPanGestureRecognizer) {
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
            if label5.frame.intersects(box1.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5.alpha = 0.0
                }
                boxLabel1.text = label5.text
                boxLabel1.isHidden = false
            
            }else if label5.frame.intersects(box2.frame){
                UILabel.animate(withDuration: 0.3) {
                    self.label5.alpha = 0.0
                }
                boxLabel2.text = label5.text
                boxLabel2.isHidden = false
            }else{
                UILabel.animate(withDuration: 0.3) {
                    self.label5.frame.origin = self.label5Origin
                }
            }
            showOption()
        default:
            break
        }
    }
    
    @IBAction func pan20Handle(_ sender: UIPanGestureRecognizer) {
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
            if option20.frame.intersects(boxResult.frame){
                UIView.animate(withDuration: 0.3) {
                    self.option20.alpha = 0.0
                    self.label20.alpha = 0.0
                }
                boxLabelResult.text = label20.text
                boxLabelResult.isHidden = false
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option20.frame.origin = self.option20Origin
                }
            }
        default:
            break
        }
    }
    
    @IBAction func pan18handle(_ sender: UIPanGestureRecognizer) {
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
            if option18.frame.intersects(boxResult.frame){
                boxResult.shakeResult()
                self.option18.frame.origin = self.option18Origin
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option18.frame.origin = self.option18Origin
                }
            }
        default:
            break
        }
    }
    
    @IBAction func pan22Handle(_ sender: UIPanGestureRecognizer) {
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
            if option22.frame.intersects(boxResult.frame){
                boxResult.shakeResult()
                self.option22.frame.origin = self.option22Origin
            }else{
                UIView.animate(withDuration: 0.3) {
                    self.option22.frame.origin = self.option22Origin
                }
            }
        default:
            break
        }
    }
    
    func roundedOption(){
        option18.layer.cornerRadius = 45
        option22.layer.cornerRadius = 45
        option20.layer.cornerRadius = 45
    }
    
    func showOption(){
        if boxLabel1.text != "0" && boxLabel2.text != "0"{
            option18.isHidden = false
            option22.isHidden = false
            option20.isHidden = false
        }
    }
    
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIView{
    func shakeResult(){
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 1
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 3, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 3, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }
}
