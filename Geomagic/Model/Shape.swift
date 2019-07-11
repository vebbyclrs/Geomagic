//
//  Shape.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation
import UIKit

class Shape {
    var shapeName : String
    var shapeImage : UIImage
    var level : Int
    
    init(shapeName: String,imageAssetTittled:String, level : Int) {
        self.shapeName = shapeName
        self.level = level
        
        if let image = UIImage(named: imageAssetTittled) {
            self.shapeImage = image
        }
        else {
            self.shapeImage = UIImage()
            print ("Image for shape \(shapeName) can not be found")
        }
    }
}
