//
//  SquareAreaFormulaExerciseViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 21/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaFormulaExerciseViewController: UIViewController {

    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var boxLabel1: UILabel!
    @IBOutlet weak var boxLabel2: UILabel!
    @IBOutlet weak var boxLabelResult: UILabel!
    @IBOutlet weak var birdImageView: UIImageView!
    @IBOutlet weak var boxResult: UIView!
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var option40: UIView!
    @IBOutlet weak var option42: UIView!
    @IBOutlet weak var label40: UILabel!
    @IBOutlet weak var label42: UILabel!
    @IBOutlet weak var option44: UIView!
    @IBOutlet weak var label44: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var owlImage: [UIImage] = []
        
        owlImage = createImageArray(total: 2, imagePrefix: "Owl")
        animate(imageView: birdImageView, images: owlImage)
        prepareView()
        roundedOption()
        boxLabel1.isHidden = true
        boxLabel2.isHidden = true
        boxLabelResult.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UILabel.animate(withDuration: 1, animations: {
            self.label8.frame.origin.x = 348
            self.label8.frame.origin.y = 740
        }) { (true) in
            self.label8.font = self.label8.font.withSize(50)
            UILabel.animate(withDuration: 1, animations: {
                self.label5.frame.origin.x = 635
                self.label5.frame.origin.y = 743
            }, completion: { (true) in
                self.label5.font = self.label5.font.withSize(50)
                UIView.animate(withDuration: 1, animations: {
                    self.option40.frame.origin.x = 940
                    self.option40.frame.origin.y = 740
                }, completion: { (true) in
                    UIView.animate(withDuration: 1, animations: {
                        self.option40.alpha = 0.0
                        self.boxLabelResult.isHidden = false
                        self.boxLabelResult.text = "40"
                    }, completion: { (true) in
                        self.performSegue(withIdentifier: "nextFromulaExercise", sender: animated)
                    })
                })
            })
        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + UILabel.inheritedAnimationDuration) {
//            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "FormulaExercise")
//            self.show(nextVC!, sender: nil)
//        }
    }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage]{
        
        var imageArray:[UIImage] = []
        
        for imageCount in 0..<total{
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        return imageArray
    }
    
    func animate(imageView: UIImageView, images: [UIImage]){
        imageView.animationImages = images
        imageView.animationDuration = 0.7
        imageView.startAnimating()
    }
    
    func prepareView () {
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
    }
    
    func roundedOption(){
        option40.layer.cornerRadius = 45
        option42.layer.cornerRadius = 45
        option44.layer.cornerRadius = 45
    }
}
