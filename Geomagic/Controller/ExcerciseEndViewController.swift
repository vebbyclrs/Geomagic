//
//  ExcerciseEndViewController.swift
//  Geomagic
//
//  Created by Ni Made Ananda Ayu Permata on 22/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//


import Foundation
import Foundation
import UIKit

class ExcerciseEndViewController: UIViewController {
    @IBOutlet weak var owlImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        BirdMove()
        
    }
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        owlImage.animationImages = images
        owlImage.animationDuration = 0.3
        owlImage.startAnimating()
        
    }
    


}
