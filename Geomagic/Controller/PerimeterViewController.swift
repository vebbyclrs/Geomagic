//
//  PerimeterViewController.swift
//  Geomagic
//
//  Created by Dany Hakim on 18/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class PerimeterViewController: UIViewController {
    var count = 0
    var path = UIBezierPath()
    var pathSimpen = UIBezierPath()
    var shapeLayer = CAShapeLayer()
    var tempShapeLayer = CAShapeLayer()
    var lokasiAwal = CGPoint.zero
    var lokasiAkhir = CGPoint.zero
    @IBOutlet weak var shapeView: UIView!
    @IBOutlet weak var viewForLine: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        viewForLine.layer.addSublayer(shapeLayer)
        shapeLayer.strokeColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        shapeLayer.lineWidth = 12
        shapeLayer.fillColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        viewForLine.layer.addSublayer(tempShapeLayer)
        tempShapeLayer.strokeColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        tempShapeLayer.lineWidth = 12
        tempShapeLayer.fillColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        //set titik/lokasi awal
        if let location = touches.first?.location(in: viewForLine){
            lokasiAwal = location
            print("lokasi Awal = \(lokasiAwal)")
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        if let location = touches.first?.location(in: viewForLine){
    
           path.removeAllPoints()
            path.move(to: lokasiAwal)
             lokasiAkhir = CGPoint(x: location.x, y: location.y)
            
            path.addLine(to: lokasiAkhir)
            
            
            tempShapeLayer.path = path.cgPath
            
           
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        path.close()
        pathSimpen.append(path)
        shapeLayer.path = pathSimpen.cgPath
        print("lokasi Akhir = \(lokasiAkhir)")
    }

    
}
