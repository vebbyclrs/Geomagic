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
    
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var baseTitleView: UIView!
    @IBOutlet private var shape: UIView!
    
    var titlePassed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titlePassed

    }
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
        
    }

}
