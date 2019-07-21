//
//  squareAreaNewViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 17/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class squareAreaNewViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    @IBOutlet weak var square8: UIView!
    @IBOutlet weak var square9: UIView!
    @IBOutlet weak var square10: UIView!
    @IBOutlet weak var square11: UIView!
    @IBOutlet weak var square12: UIView!
    @IBOutlet weak var square13: UIView!
    @IBOutlet weak var square14: UIView!
    @IBOutlet weak var square15: UIView!
    @IBOutlet weak var birdImageView: UIImageView!
    
    var resultValue = 0{
        didSet{
            resultLabel.text = "\(resultValue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var owlImage: [UIImage] = []
        
        owlImage = createImageArray(total: 2, imagePrefix: "Owl")
        animate(imageView: birdImageView, images: owlImage)
        prepareView()
        squareBorder()
        resultLabel.isHidden = true

    }
    
    @IBAction func tap1(_ sender: UITapGestureRecognizer) {
        square1.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square1.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap2(_ sender: UITapGestureRecognizer) {
        square2.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square2.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
   
    @IBAction func tap3(_ sender: UITapGestureRecognizer) {
        square3.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square3.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
   
    @IBAction func tap4(_ sender: UITapGestureRecognizer) {
        square4.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square4.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap5(_ sender: UITapGestureRecognizer) {
        square5.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square5.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap6(_ sender: UITapGestureRecognizer) {
        square6.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square6.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap7(_ sender: UITapGestureRecognizer) {
        square7.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square7.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap8(_ sender: UITapGestureRecognizer) {
        square8.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square8.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap9(_ sender: UITapGestureRecognizer) {
        square9.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square9.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap10(_ sender: UITapGestureRecognizer) {
        square10.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square10.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap11(_ sender: UITapGestureRecognizer) {
        square11.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square11.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap12(_ sender: UITapGestureRecognizer) {
        square12.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square12.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap13(_ sender: UITapGestureRecognizer) {
        square13.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square13.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
   
    @IBAction func tap14(_ sender: UITapGestureRecognizer) {
        square14.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square14.isUserInteractionEnabled = false
        resultLabel.isHidden = false
    }
    
    @IBAction func tap15(_ sender: UITapGestureRecognizer) {
        square15.backgroundColor = #colorLiteral(red: 0.5900922418, green: 0.4826520681, blue: 0.3837720156, alpha: 1)
        if resultValue < 15{
            resultValue += 1
            if resultValue == 15{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "squareFormula")
                    self.show(nextVC!, sender: nil)
                }
            }
        }
        square15.isUserInteractionEnabled = false
        resultLabel.isHidden = false
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
        square9.layer.borderWidth = 1
        square9.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square10.layer.borderWidth = 1
        square10.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square11.layer.borderWidth = 1
        square11.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square12.layer.borderWidth = 1
        square12.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square13.layer.borderWidth = 1
        square13.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square14.layer.borderWidth = 1
        square14.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square15.layer.borderWidth = 1
        square15.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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
