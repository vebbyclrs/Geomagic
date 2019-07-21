//
//  SubMenuViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SubMenuViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    var shapePassed:Shape?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()

        // Do any additional setup after loading the view.
    }

    
    func prepareView() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        titleLabel.text = shapePassed?.shapeName.uppercased()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        "goToPengenalanSegitiga"
        
        if segue.identifier == "goToPengenalan" {
            
            
        }
        else if segue.identifier == "goToPengenalanSegitiga" {
            
        }
    }
    
    
    @IBAction func pengenalanTapped(_ sender: Any) {
        if shapePassed?.shapeType == .some(.segitiga) {
               performSegue(withIdentifier: "goToPengenalanSegitiga", sender: self)
        }
        else {
            performSegue(withIdentifier: "goToPengenalan", sender: self)
        }
    }
    
    @IBAction func kelilingTapped(_ sender: Any) {
        print ("keliling")
    }
    @IBAction func luasTapped(_ sender: Any) {
        print ("luas")
    }
    @IBAction func latihanTapped(_ sender: Any) {
        print ("latihan")
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.performSegueToReturnBack()
    }
    
    
}
