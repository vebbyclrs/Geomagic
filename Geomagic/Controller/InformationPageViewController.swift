//
//  InformationPageViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class InformationPageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var baseTitleView: UIView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var baseInformationTextField: UIView!
    @IBOutlet var informationTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        BirdMove()
        constructView()
        writeTitle(title: "This is the title")
        writeInformationText(longText: "adhfbk asdbhfahbd acbdkjhfasdhf basdkhbfalshdbflaksdjbasdhfba \n- dajdfhaksdjfa sdbfa \n- kadsjhfka hdsbfahd")
        // Do any additional setup after loading the view.
    }
    func BirdMove(){
        let images: [UIImage] = [UIImage(named: "Owl1")!, UIImage(named: "Owl2")!]
        
        imageView.animationImages = images
        imageView.animationDuration = 0.3
        imageView.startAnimating()

    }
    func constructView () {
        //create round corner
        baseTitleView.layer.cornerRadius = 30
        
        //create shadow
        baseTitleView.layer.shadowOpacity = 0.5
        baseTitleView.layer.shadowRadius = 4
        
        let roundedRect = CGRect(x: 5, y: 5, width: baseTitleView.frame.width*0.82, height: baseTitleView.frame.height)
        print (roundedRect, 370 ,  baseTitleView.frame.height)
        baseTitleView.layer.shadowPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: baseTitleView.layer.cornerRadius).cgPath
    }
    
    func writeTitle(title:String) {
        titleLabel.text = title
    }
    
    func writeInformationText (longText : String) {
        informationTextField.text = longText
    }

}
