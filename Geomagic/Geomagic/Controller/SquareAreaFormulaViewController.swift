//
//  SquareAreaFormulaViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaFormulaViewController: UIViewController {

    @IBOutlet weak var formulaView: UIView!
    @IBOutlet weak var birdImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var owlImage: [UIImage] = []
        
        owlImage = createImageArray(total: 2, imagePrefix: "Owl")
        animate(imageView: birdImageView, images: owlImage)
        prepareView()
        roundedView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "AreaFormulaTutorial")
            self.show(nextVC!, sender: nil)
        }
    }
    
    func roundedView(){
        formulaView.layer.cornerRadius = 30
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
}
