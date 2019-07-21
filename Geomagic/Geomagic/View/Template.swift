//
//  Template.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func giveShadow(x: CGFloat, y: CGFloat, opacity: Float, blur: CGFloat, shadowColor: CGColor?) {
        
        let rect = CGRect(x: x, y: y, width: frame.width, height: frame.height)
        layer.shadowPath = UIBezierPath(roundedRect: rect, cornerRadius: layer.cornerRadius).cgPath
        layer.shadowOpacity = opacity
        layer.shadowRadius = blur
        layer.shadowColor = shadowColor ?? UIColor.black.cgColor
        
        
        //apalah ini capek gue
    }
}

extension UIViewController {
    func performSegueToReturnBack()  {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
            print ("1")
        } else {
            self.dismiss(animated: true, completion: nil)
            print ("2")
        }
    }
}
