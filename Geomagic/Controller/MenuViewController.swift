//
//  PersegiKelilingViewC.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var shapes : [Shape] = [
        Shape(shapeName: "PERSEGI",imageAssetTittled:"Square", level: 0),
        Shape(shapeName: "PERSEGI PANJANG",imageAssetTittled:"Rectangle", level: 1),
        Shape(shapeName: "SEGITIGA",imageAssetTittled:"Triangle", level: 2),
        Shape(shapeName: "BELAH KETUPAT",imageAssetTittled:"Diamond", level: 3),
        Shape(shapeName: "LAYANG-LAYANG",imageAssetTittled:"Kite", level: 3),
        Shape(shapeName: "JAJAR GENJANG",imageAssetTittled:"Parallelogram", level: 4),
        Shape(shapeName: "TRAPESIUM",imageAssetTittled:"Trapesium", level: 4),
        Shape(shapeName: "LINGKARAN",imageAssetTittled:"Circle", level: 5)
    ]
    
    let userDefault : UserDefaults = .standard //to get user level
    var userLevel : Int = 0 //memungkinkan data redundan(?)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appData = AppData()
        self.userLevel = appData.level
        print ("in")
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Apple Documentation: Asks your data source object for the number of items in the specified section
        return self.shapes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Apple Documentation: Asks your data source object for the cell that corresponds to the specified item in the collection view
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionShapeMenu", for: indexPath) as? CollectionViewCell
        cell?.baseView.backgroundColor = .white
        cell?.baseView.layer.cornerRadius = 30.0
        cell?.baseView.layer
        
        cell?.shapeImage.image = shapes[indexPath.row].shapeImage
        cell?.shapeNameLabel.text = shapes[indexPath.row].shapeName
        cell?.shapeNameLabel.textColor = .white
        
        //menangani tampilan shapes yang harus dikunci sesuai level
        let shouldHide = !(shapes[indexPath.row].level > userLevel)
        cell?.upperLayer.layer.cornerRadius = 30.0
        cell?.upperLayer.isHidden = shouldHide
        cell?.locker.isHidden = shouldHide
        
        //hide semua button
        cell?.luasButton.isHidden = true
        cell?.latihanButton.isHidden = true
        cell?.kelilingButton.isHidden = true
        cell?.pengenalanButton.isHidden = true
        
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell
        let isHidden = (shapes[indexPath.row].level > userLevel)

        if isHidden {
            print ("LOCKED")
        }
        else {
            print ("In")
//            cell?.upperLayer.backgroundColor = UIColor(hex: "0xBDE2EE", alpha: 1)
            cell?.upperLayer.backgroundColor = UIColor(red: CGFloat(189/255), green: CGFloat(226/255), blue: CGFloat(239/255), alpha: 0.4)
            cell?.upperLayer.layer.cornerRadius = 30.0
            cell?.upperLayer.isHidden = false
            
            cell?.luasButton.isHidden =  false
            
            cell?.latihanButton.isHidden =  false
            cell?.kelilingButton.isHidden =  false
            cell?.pengenalanButton.isHidden =  false
        }
    }
    func hideButtons() {

    }
}
