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
    
    @IBOutlet private var contentLabel: UILabel!

    @IBOutlet private var shape: UIView!
    weak var shapeLayer : CAShapeLayer?
    private var tapCount = 0
    
    var shapeTypePassed: ShapeType? {
        didSet{
            updateTitle(shape:shapeTypePassed!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTitle(shape: shapeTypePassed!)
        

    }
    
    func updateTitle(shape:ShapeType) {
//        switch shape {
//        case .persegi:
        contentLabel?.text = "Keliling persegi panjang dapat dihitung dengan menjumlahkan semua sisinya lho: "
//        default:
//            contentLabel?.text = "Title"
//        }
    }
    
    func animasiSisi(shape:UIView) {
        switch shapeTypePassed {
        case .some(.persegiPanjang):
            self.shapeLayer = addAnimationRectanglePerimeter(shape: shape)
        default:
            print ("printed on func animasiSisi")
        }
        
    }
    
    @IBAction func tapped(_ sender: Any) {
        tapCount += 1
        if tapCount == 1 {
            contentLabel.text = "Sisi-sisi persegi panjang"
            animasiSisi(shape: shape)
        }
    }
    func addAnimationRectanglePerimeter (shape:UIView) -> CAShapeLayer{
        let shapeLayer = CAShapeLayer()
        shapeLayer.fillColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 0).cgColor
        shapeLayer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        shapeLayer.lineWidth = 12
        
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
        self.view.layer.addSublayer(shapeLayer)
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
//        animation.fromValue = 0
        animation.duration = 12
        
        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [animation]
        animationGroup.duration = animation.duration + 0.5
        animationGroup.repeatCount = HUGE
        
        shapeLayer.add(animationGroup, forKey: "animasiKeliling")
        
        return shapeLayer
    }
    
    @IBAction func backTapped(_ sender: Any) {
        performSegueToReturnBack()
    }
    
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()
    }
    
    

}
