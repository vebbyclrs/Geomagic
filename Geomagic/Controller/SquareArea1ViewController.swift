//
//  SquareArea1ViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 18/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareArea1ViewController: UIViewController {
    
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var birdImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var owlImage: [UIImage] = []
        
        owlImage = createImageArray(total: 2, imagePrefix: "Owl")
        animate(imageView: birdImageView, images: owlImage)
        prepareView()
        customButton()
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
    }
    
    func customButton(){
        buttonOutlet.layer.cornerRadius = 30
        buttonOutlet.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        buttonOutlet.layer.shadowOpacity = 0.2
        let roundedButton = CGRect(x: 8, y: 8, width: buttonOutlet.frame.width, height: buttonOutlet.frame.height)
        buttonOutlet.layer.shadowPath = UIBezierPath(roundedRect: roundedButton, cornerRadius: CGFloat(34.0)).cgPath
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
