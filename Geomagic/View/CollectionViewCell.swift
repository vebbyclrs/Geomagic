//
//  CollectionViewCell.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

//protocol CollectionViewCellDelegate {
//    func pressPengenalanButton(sender:UIButton,cell:UICollectionViewCell)
//    func pressKelilingButton(sender:UIButton,cell:UICollectionViewCell)
//    func pressLuasButton(sender:UIButton,cell:UICollectionViewCell)
//    func pressLatihanButton(sender:UIButton,cell:UICollectionViewCell)
//
//}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var shapeImage: UIImageView!
    @IBOutlet weak var shapeNameLabel: UILabel!
    
    @IBOutlet weak var upperLayer: UIView!
    @IBOutlet weak var locker: UIImageView!
    
//    @IBOutlet var pengenalanButton: RoundButton!
//    @IBOutlet var kelilingButton: RoundButton!
//    @IBOutlet var luasButton: RoundButton!
//    @IBOutlet var latihanButton: RoundButton!
    
//    var collectionViewDelegate:CollectionViewCellDelegate?
    
//    func initClickButton() {
//        pengenalanButton.addTarget(self, action: #selector(self.pressPengenalanButton(_:)), for: .touchUpInside)
//        kelilingButton.addTarget(self, action: #selector(self.pressKelilingButton(_:)), for: .touchUpInside)
//        luasButton.addTarget(self, action: #selector(self.pressLuasButton(_:)), for: .touchUpInside)
//        latihanButton.addTarget(self, action: #selector(self.pressLatihanButton(_:)), for: .touchUpInside)
//    }
    
//    //The target function
//    @objc func pressPengenalanButton(_ sender: UIButton){ //<- needs `@objc`
//        self.collectionViewDelegate?.pressPengenalanButton(sender:sender, cell: self)
//    }
//    @objc func pressKelilingButton(_ sender: UIButton){ //<- needs `@objc`
//        self.collectionViewDelegate?.pressKelilingButton(sender:sender, cell: self)
//    }
//    @objc func pressLuasButton(_ sender: UIButton){ //<- needs `@objc`
//       self.collectionViewDelegate?.pressLuasButton(sender:sender, cell: self)
//    }
//    @objc func pressLatihanButton(_ sender: UIButton){ //<- needs `@objc`
//        self.collectionViewDelegate?.pressLatihanButton(sender:sender, cell: self)
//    }
    
}

