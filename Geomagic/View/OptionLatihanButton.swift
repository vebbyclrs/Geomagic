//
//  OptionLatihanButton.swift
//  Geomagic
//
//  Created by Ni Made Ananda Ayu Permata on 16/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//


import Foundation

import UIKit
@IBDesignable class OptionLatihanButton: UIButton {
    
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
    
    @IBInspectable var cornerRadius: CGFloat = 50 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
}

