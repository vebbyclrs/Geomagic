//
//  LetsGoViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class LetsGoViewController: UIViewController {

    @IBOutlet var contentLabel: UILabel!
    @IBOutlet var btnSiap: RoundButton!
    var shapeTypePassed : ShapeType? {
        didSet{
            print (shapeTypePassed!.rawValue)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSiap.giveShadow(x: 3, y: 3, opacity: 0.5, blur: 10, shadowColor: UIColor.black.cgColor )
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        updateContent()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "continue" {
            let dest = segue.destination as! IntroductionShapeViewController
            dest.shapeTypePassed = self.shapeTypePassed
        }
    }
    
    @IBAction func siapButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "continue", sender: self)
    }
    @IBAction func backTapped(_ sender: Any) {
        performSegueToReturnBack()
    }
    
    func updateContent () {
        self.contentLabel.text = "Sekarang kita akan membahas mengenai rumus keliling persegi panjang. Sudah siap??"
    }

}

