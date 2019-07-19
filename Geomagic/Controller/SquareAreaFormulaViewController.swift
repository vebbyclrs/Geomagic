//
//  SquareAreaFormulaViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaFormulaViewController: UIViewController {

    @IBOutlet weak var formulaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedView()
    }
    
    func roundedView(){
        formulaView.layer.cornerRadius = 30
    }
}
