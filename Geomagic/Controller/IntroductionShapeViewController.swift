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
    @IBOutlet var shape: UIView!
    weak var shapeLayer :CAShapeLayer?
    
    var shapeType: ShapeType? {
        didSet{
            updateTitle(shape:shapeType!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        updateTitle(shape: shapeType!)
        self.shapeLayer = addAnimationRectanglePerimeter(shape: shape)

    }
    
    func updateTitle(shape:ShapeType) {
        switch shape {
        case .persegi:
            titleLabel?.text = "Sisi-sisi persegi: "
        default:
            titleLabel?.text = "Title"
        }
    }
    
    func animasiSisi(shape:UIView) {
        switch shapeType {
        case .some(.persegi):
            self.shapeLayer = addAnimationRectanglePerimeter(shape: shape)
        default:
            print ("printed on func animasiSisi")
        }
        
    }
    
    func addAnimationRectanglePerimeter (shape:UIView) -> CAShapeLayer{
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 0).cgColor
        shapeLayer.strokeColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1).cgColor
        shapeLayer.lineWidth = 14
        
        let path = UIBezierPath()
        if let frame = shape.superview?.convert(shape.frame, to: self.view) {
            path.move(to: CGPoint(x: frame.minX, y: frame.minY))
            path.addLine(to: CGPoint(x: frame.maxX, y: frame.minY))
            path.addLine(to: CGPoint(x: frame.maxX, y: frame.maxY))
            path.addLine(to: CGPoint(x: frame.minX, y: frame.maxY))
            path.addLine(to: CGPoint(x: frame.minX, y: frame.minY-(shapeLayer.lineWidth/2)))
            print(frame)
        }
        
        shapeLayer.path = path.cgPath
        view.layer.addSublayer(shapeLayer)
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = 2
        
        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [animation]
        animationGroup.duration = animation.duration*2 + 0.5
        animationGroup.repeatCount = HUGE
        
        shapeLayer.add(animationGroup, forKey: "AnimasiKeliling")
        
        return shapeLayer
    }
    
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
    }
    
    

}
