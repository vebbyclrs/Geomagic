//
//  MenuModel.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 11/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation
import UIKit

class CellMenuModel {
    var baseView: UIView
    var shapeImage: UIImage
    var shapeLabel: UILabel
    
    init(baseView: UIView,shapeImage: UIImage,shapeLabel:UILabel) {
        self.baseView = baseView
        self.shapeImage = shapeImage
        self.shapeLabel = shapeLabel
    }
}
