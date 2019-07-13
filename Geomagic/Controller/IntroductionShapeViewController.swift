//
//  IntroductionShapeViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class IntroductionShapeViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var baseTitleView: UIView!
    @IBOutlet var shape: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        BirdMove()

    }
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
        
    }

}
