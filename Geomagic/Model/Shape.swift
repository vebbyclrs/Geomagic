//
//  Shape.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation
import UIKit

enum ShapeType {
    case persegi
    case persegiPanjang
    case segitiga
    case belahketupat
    case layangLayang
    case jajarGenjang
    case trapesium
    case lingkaran
}

enum SegitigaTypes {
    case segitigaSamaSisi
    case segitigaSamaKaki
    case segitigaSembarang
    case segitigaLancip
    case segitigaSikuSiku
    case segitigaTumpul
}

class Shape {
    var shapeName : String
    var shapeType : ShapeType
    var shapeImage : UIImage
    var level : Int
    
    init(shapeName: String,shapeType:ShapeType,imageAssetTittled:String, level : Int) {
        self.shapeName = shapeName
        self.level = level
        self.shapeType = shapeType
        if let image = UIImage(named: imageAssetTittled) {
            self.shapeImage = image
        }
        else {
            self.shapeImage = UIImage()
            print ("Image for shape \(shapeName) can not be found")
        }
    }
}
