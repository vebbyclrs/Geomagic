//
//  InformationPageViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class InformationPageViewController: UIViewController {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private var titleBackgroundView: UIView!
    @IBOutlet private var informationBackgroundView: UIView!
    @IBOutlet  var titleLabel: UILabel!
    @IBOutlet  var informationTextField: UITextView!
    
    var shapeType : ShapeType? {
        didSet {
            updateTitleAndContent(shape:shapeType!)
        }
    }
    
    var shapeSegitiga: SegitigaTypes?// add didset!
    
    
//    var
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTitleAndContent(shape: self.shapeType!)
    }
    
    func constructView () {
        //create round corner
        titleBackgroundView.layer.cornerRadius = 30

        //create shadow
        titleBackgroundView.layer.shadowOpacity = 0.5
        titleBackgroundView.layer.shadowRadius = 4

        let roundedRect = CGRect(x: 5, y: 5, width: titleBackgroundView.frame.width, height: titleBackgroundView.frame.height)
        print (roundedRect, 370 ,  titleBackgroundView.frame.height)
        titleBackgroundView.layer.shadowPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: titleBackgroundView.layer.cornerRadius).cgPath
    }
    
    @IBAction func tapped(_ sender: Any) {
        performSegue(withIdentifier: "goToIntroductionShape", sender: sender)
    }
    
    func updateTitleAndContent(shape:ShapeType) {
        switch shape {
        case .persegi:
            titleLabel?.text = "Ciri-ciri persegi"
            informationTextField?.text = "1. Memiliki 4 sisi yang sama panjang \n2. Memiliki 4 sudut yang sama besar, yaitu 90°. (disebut sebagai sudut siku-siku"
        case .segitiga:
            titleLabel?.text = "hbljhb"
            informationTextField?.text = "jvkgvj"
        default:
            titleLabel?.text = "Title"
            informationTextField?.text = "content points"
            
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToIntroductionShape" {
            let destinationVC = segue.destination as!  IntroductionShapeViewController
            destinationVC.shapeType = self.shapeType
        }
    }
    
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
        
    }

}
