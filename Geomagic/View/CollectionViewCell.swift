//
//  CollectionViewCell.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var shapeImage: UIImageView!
    @IBOutlet weak var shapeNameLabel: UILabel!
    
    @IBOutlet weak var upperLayer: UIView!
    @IBOutlet weak var locker: UIImageView!
    
    @IBOutlet var pengenalanButton: RoundButton!
    @IBOutlet var kelilingButton: RoundButton!
    @IBOutlet var luasButton: RoundButton!
    @IBOutlet var latihanButton: RoundButton!
    
}

extension UIColor {
    public convenience init?(hex: String, alpha: CGFloat) {
        let r, g, b: CGFloat
        
        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: alpha)
                    return
                }
            }
        }
        
        return nil
    }
}
