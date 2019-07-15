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
        Shape(shapeName: "LAYANG-LAYANG",imageAssetTittled:"Kite", level: 4),
        Shape(shapeName: "JAJAR GENJANG",imageAssetTittled:"Parallelogram", level: 5),
        Shape(shapeName: "TRAPESIUM",imageAssetTittled:"Trapesium", level: 6),
        Shape(shapeName: "LINGKARAN",imageAssetTittled:"Circle", level: 7)
    ]
    
    let userDefault : UserDefaults = .standard //to get user level
    var userLevel : Int = 0 //akan diganti pada didload
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appData = AppData()
        self.userLevel = appData.level
        self.userLevel = 3
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Apple Documentation: Asks your data source object for the number of items in the specified section
        return self.shapes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Apple Documentation: Asks your data source object for the cell that corresponds to the specified item in the collection view
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionShapeMenu", for: indexPath) as! CollectionViewCell
        
        //bikin kotak2 view cell dulu
        cell.baseView.backgroundColor = .white
        cell.baseView.layer.cornerRadius = 30.0
        cell.baseView.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 0.2).cgColor
        cell.baseView.layer.borderWidth = CGFloat(5.0)
        //give shadow effect
        cell.baseView.layer.shadowOpacity = 0.3
        cell.baseView.layer.shadowRadius = 4
        let roundedRect = CGRect(x: 5, y: 5, width: cell.baseView.frame.width, height: cell.baseView.frame.height)
        cell.baseView.layer.shadowPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: CGFloat(34.0) ).cgPath
        //load image for each square
        cell.shapeImage.image = shapes[indexPath.row].shapeImage
        cell.shapeNameLabel.text = shapes[indexPath.row].shapeName
        cell.shapeNameLabel.textColor = .black

        let shouldHide : Bool = userLevel < shapes[indexPath.row].level //user level lebih kecil -> lock shape
        if shouldHide {
            showHiddenCell(cell: cell)
            showBlueButtons(show: false, cell: cell)
        } else {
            showBlueUpperLayerWithButtons(show: false, cell: cell)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        let isLocked : Bool = userLevel < shapes[indexPath.row].level
        
        if isLocked{
            print ("Locked. Unlock first")
        }
        else {
            showBlueUpperLayerWithButtons(show: true, cell: cell)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell
        let isLocked : Bool = userLevel < shapes[indexPath.row].level
        
        if !isLocked {
            if let lastCell = cell {
                showBlueUpperLayerWithButtons(show: false, cell: lastCell)
            }
        }
        
    }
    
    func showHiddenCell(cell:CollectionViewCell) {
        //abu-abu dan locker
        cell.upperLayer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        cell.upperLayer.layer.cornerRadius = 30.0
        cell.locker.isHidden = false
        cell.upperLayer.isHidden = false
        cell.luasButton.isHidden = true
        cell.latihanButton.isHidden = true
        cell.kelilingButton.isHidden = true
        cell.pengenalanButton.isHidden = true
        
    }
    
    func showAvailCell(cell:CollectionViewCell){
        cell.upperLayer.isHidden = true
        cell.locker.isHidden = true
    }
    
    func showBlueButtons(show:Bool, cell : CollectionViewCell) {
        print ("in\(show)")
        cell.luasButton.isHidden = !show
        cell.latihanButton.isHidden = !show
        cell.kelilingButton.isHidden = !show
        cell.pengenalanButton.isHidden = !show
        
    }
    
    func showBlueUpperLayerWithButtons (show: Bool , cell: CollectionViewCell) {
        cell.upperLayer.layer.cornerRadius = 30.0
        cell.upperLayer.backgroundColor = UIColor(red: 189/255, green: 226/255, blue: 238/225, alpha: 0.3)
        cell.locker.isHidden = true //harus false
        cell.upperLayer.isHidden = !show
        
        cell.pengenalanButton.isHidden = !show
        cell.kelilingButton.isHidden = !show
        cell.latihanButton.isHidden = !show
        cell.luasButton.isHidden = !show
        showBlueButtons(show: true, cell: cell)
    }
}
