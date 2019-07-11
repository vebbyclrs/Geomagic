//
//  PersegiKelilingViewC.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UICollectionViewDataSource {
    
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
        print ("in2")
        print ("******\(indexPath)*****")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionShapeMenu", for: indexPath) as? CollectionViewCell
        cell?.baseView.backgroundColor = .black
        cell?.baseView.layer.cornerRadius = CGFloat(30.0)
        
        cell?.shapeImage.image = shapes[indexPath.row].shapeImage
        cell?.shapeNameLabel.text = shapes[indexPath.row].shapeName
        cell?.shapeNameLabel.textColor = .white
        
        return cell!
    }
    
}
