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
    var shapePassed:ShapeType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        
        // Do any additional setup after loading the view.
    }
    
    
    func prepareView() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        titleLabel.text = shapePassed!.rawValue.uppercased()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        "goToPengenalanSegitiga"
        
        if segue.identifier == "goToPengenalan" {
            let destination = segue.destination as! InformationPageViewController
            destination.shapePassed = self.shapePassed
        }
        else if segue.identifier == "goToKeliling" {
            let destination = segue.destination as! LetsGoViewController
            destination.shapeTypePassed = self.shapePassed
        }
        //        else if segue.identifier == "goToPengenalanSegitiga" {
        //            let destination = segue.destination as! SubmenuSegitigaViewController
        //
        //        }
        
    }
    
    
    @IBAction func pengenalanTapped(_ sender: Any) {
        if shapePassed == .some(.segitiga) {
            performSegue(withIdentifier: "goToPengenalanSegitiga", sender: self)
        }
        else {
            performSegue(withIdentifier: "goToPengenalan", sender: self)
        }
    }
    
    @IBAction func kelilingTapped(_ sender: Any) {
        if shapePassed == .some(.persegiPanjang) {
            performSegue(withIdentifier: "goToKeliling", sender: self)
        }
    }
    @IBAction func luasTapped(_ sender: Any) {
        if self.shapePassed == .some(.persegiPanjang) {
            performSegue(withIdentifier: "goToSquareArea", sender: self)
        }
    }
    @IBAction func latihanTapped(_ sender: Any) {
        if shapePassed == .some(.persegiPanjang) {
            performSegue(withIdentifier: "goToLatihanPersegiPanjang", sender: self)
        }
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.performSegueToReturnBack()
    }
    
    
}
