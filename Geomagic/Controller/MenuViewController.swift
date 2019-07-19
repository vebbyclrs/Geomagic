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
        Shape(shapeType: .persegi, imageAssetTittled:"Square", level: 0),
        Shape(shapeType: .persegiPanjang, imageAssetTittled:"Rectangle", level: 1),
        Shape(shapeType: .segitiga, imageAssetTittled:"Triangle", level: 2),
        Shape(shapeType: .belahketupat, imageAssetTittled:"Diamond", level: 3),
        Shape(shapeType: .layangLayang, imageAssetTittled:"Kite", level: 4),
        Shape(shapeType: .jajarGenjang, imageAssetTittled:"Parallelogram", level: 5),
        Shape(shapeType: .trapesium, imageAssetTittled:"Trapesium", level: 6),
        Shape(shapeType: .lingkaran, imageAssetTittled:"Circle", level: 7)
    ]
    
    let userDefault : UserDefaults = .standard //to get user level
    var userLevel : Int = 0 //akan diganti pada didload
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        let appData = AppData()
        self.userLevel = appData.level
        self.userLevel = 2
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //Apple Documentation: Asks your data source object for the number of items in the specified section
        return self.shapes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Apple Documentation: Asks your data source object for the cell that corresponds to the specified item in the collection view
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionShapeMenu", for: indexPath) as! CollectionViewCell
        
        cell = prepareCollectionView(cell: cell, indexPath: indexPath)

        let shouldHide : Bool = userLevel < shapes[indexPath.row].level //user level lebih kecil -> lock shape
        if shouldHide {
            showHiddenCell(cell: cell)
        } else {
            showAvailCell(cell: cell)
        }
//        cell.collectionViewDelegate = self
//        cell.initClickButton()
        cell.tag = indexPath.row
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell
//        let isLocked : Bool = userLevel < shapes[indexPath.row].level
//
//        if !isLocked {
//            if let lastCell = cell {
//                showBlueUpperLayerWithButtons(show: false, cell: lastCell)
//            }
//        }
    }
    
    func showHiddenCell(cell:CollectionViewCell) {
        //abu-abu dan locker
        cell.upperLayer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        cell.upperLayer.layer.cornerRadius = 30.0
        cell.locker.isHidden = false
        cell.upperLayer.isHidden = false
    }
    
    func showAvailCell(cell:CollectionViewCell){
        cell.upperLayer.isHidden = true
        cell.locker.isHidden = true
    }
    
    func prepareCollectionView (cell:CollectionViewCell, indexPath: IndexPath) -> CollectionViewCell{
        //bikin kotak2 view cell dulu
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
        
        return cell
    }
    
}

// MARK: - Button Click
//extension MenuViewController:CollectionViewCellDelegate{
//
//    func pressPengenalanButton(sender: UIButton, cell: UICollectionViewCell) {
//        print(cell.tag)
//        print("Pengenalan")
//        if cell.tag == 0 { //go to pengenalan persegi
//
//            performSegue(withIdentifier: "goToPengenalanPersegi", sender: sender)
//
//        }
//    }
//
//    func pressKelilingButton(sender: UIButton, cell: UICollectionViewCell) {
//        print(cell.tag)
//        print("Keliling")
//    }
//
//    func pressLuasButton(sender: UIButton, cell: UICollectionViewCell) {
//        print(cell.tag)
//        print("Luas")
//    }
//
//    func pressLatihanButton(sender: UIButton, cell: UICollectionViewCell) {
//        print(cell.tag)
//        print("Latihan")
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToPengenalanPersegi" {
//            let nextVC = segue.destination as! InformationPageViewController
//            nextVC.shapeType = .persegi
//        }
//    }
//}
