//
//  InformationPageViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class InformationPageViewController: UIViewController {
    @IBOutlet private weak var owlImage: UIImageView!
    @IBOutlet  var titleLabel: UILabel!
    @IBOutlet var shapeImage: UIImageView!
    @IBOutlet var informationLabel1: UILabel!
    @IBOutlet var informationLabel2: UILabel!
    
    
    var shapePassed : Shape?
    var isSegitiga : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func constructView () {
        self.view.backgroundColor = UIColor(patternImage: (UIImage(named: "background.png")!))
        
        
    }
    
    func updateTitleAndContent(shapeType:ShapeType) {
        if let shape = shapePassed {
            
            

        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToIntroductionShape" {
//            let destinationVC = segue.destination as!  IntroductionShapeViewController
//            destinationVC.shapeType = self.shapeType
//        }
    }
    
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        owlImage.animationImages = images
        owlImage.animationDuration = 0.3
        owlImage.startAnimating()
        
    }
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegueToReturnBack()
    }
    
}
