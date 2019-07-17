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
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var informationTextField: UITextView!
    
    var titled = ""
    var informationContent = ""
    
//    var
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titled
        informationTextField.text = informationContent
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
    
    func writeTitle(title:String) {
        titleLabel.text = title
    }
    
    func writeInformationText (longText : String) {
        informationTextField.text = longText
    }
    
    @IBAction func tapped(_ sender: Any) {
        performSegue(withIdentifier: "goToIntroductionShape", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToIntroductionShape" {
            let destinationVC = segue.destination as!  IntroductionShapeViewController
            destinationVC.titlePassed = "Sisi-sisi persegi:"
        }
    }
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
        
    }

}
