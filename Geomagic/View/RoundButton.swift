//
//  RoundButton.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation


import Foundation

import UIKit
@IBDesignable class RoundButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
}

