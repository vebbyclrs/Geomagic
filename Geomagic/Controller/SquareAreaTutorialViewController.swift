//
//  SquareAreaTutorialViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 20/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaTutorialViewController: UIViewController {

    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    @IBOutlet weak var square8: UIView!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var birdImageView: UIImageView!
    
    var resultValue = 0{
        didSet{
            result.text = "\(resultValue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squareBorder()
        result.isHidden = true
        var owlImage: [UIImage] = []
        
        owlImage = createImageArray(total: 2, imagePrefix: "Owl")
        animate(imageView: birdImageView, images: owlImage)
        prepareView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 1, animations: {
            self.square1.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
            self.result.isHidden = false
            self.resultValue += 1
        }) { (true) in
            UIView.animate(withDuration: 1, animations: {
                self.square2.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                self.resultValue += 1
            }, completion: { (true) in
                UIView.animate(withDuration: 1, animations: {
                    self.square3.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                    self.resultValue += 1
                }, completion: { (true) in
                    UIView.animate(withDuration: 1, animations: {
                        self.square4.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                        self.resultValue += 1
                    }, completion: { (true) in
                        UIView.animate(withDuration: 1, animations: {
                            self.square5.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                            self.resultValue += 1
                        }, completion: { (true) in
                            UIView.animate(withDuration: 1, animations: {
                                self.square6.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                                self.resultValue += 1
                            }, completion: { (true) in
                                UIView.animate(withDuration: 1, animations: {
                                    self.square7.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                                    self.resultValue += 1
                                }, completion: { (true) in
                                    UIView.animate(withDuration: 1, animations: {
                                        self.square8.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
                                        self.resultValue += 1
                                    }, completion: { (true) in
                                        UIView.animate(withDuration: 1, delay: 3, animations: {
                                            self.performSegue(withIdentifier: "squareAreaNew", sender: animated)
                                        })
                                    })
                                })
                            })
                        })
                    })
                })
            })
        }
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
    
    func squareBorder(){
        square1.layer.borderWidth = 1
        square1.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square2.layer.borderWidth = 1
        square2.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square3.layer.borderWidth = 1
        square3.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square4.layer.borderWidth = 1
        square4.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square5.layer.borderWidth = 1
        square5.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square6.layer.borderWidth = 1
        square6.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square7.layer.borderWidth = 1
        square7.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square8.layer.borderWidth = 1
        square8.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
