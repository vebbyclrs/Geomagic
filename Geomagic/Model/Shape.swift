//
//  Shape.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation
import UIKit

enum ShapeType : String {
    case persegi = "Persegi"
    case persegiPanjang = "Persegi panjang"
    case segitiga = "Segitiga"
    case belahketupat = "Belah ketupat"
    case layangLayang = "Layang-layang"
    case jajarGenjang = "Jajar genjang"
    case trapesium = "Trapesium"
    case lingkaran = "Lingkaran"
}

enum SegitigaTypes : String{
    case segitigaSamaSisi = "Segitiga sama sisi"
    case segitigaSamaKaki = "Segitiga sama kaki"
    case segitigaSembarang = "Segitiga sembarang"
    case segitigaLancip = "Segitiga lancip"
    case segitigaSikuSiku = "Segitiga siku-siku"
    case segitigaTumpul = "Segitiga tumpul"
}

class Shape {
    var shapeName : String
    var shapeType : ShapeType
    var shapeImage : UIImage
    var level : Int
//    var segitiga:SegitigaTypes? {
//        didSet{
//            shapeType = .segitiga
//        }
//    }
    
    init(shapeType:ShapeType,imageAssetTittled:String, level : Int) {
        self.shapeName = shapeType.rawValue
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
