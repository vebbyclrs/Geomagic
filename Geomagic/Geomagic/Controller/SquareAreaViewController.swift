//
//  SquareAreaViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaViewController: UIViewController {

    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    @IBOutlet weak var square8: UIView!
    @IBOutlet weak var square9: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        square1.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square2.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square3.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square4.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square5.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square6.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square7.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square8.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        square9.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        square1.layer.borderWidth = 1
        square2.layer.borderWidth = 1
        square3.layer.borderWidth = 1
        square4.layer.borderWidth = 1
        square5.layer.borderWidth = 1
        square6.layer.borderWidth = 1
        square7.layer.borderWidth = 1
        square8.layer.borderWidth = 1
        square9.layer.borderWidth = 1
        
    }
    
    @IBAction func tapSquare1(_ sender: UITapGestureRecognizer) {
        square1.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare2(_ sender: UITapGestureRecognizer) {
        square2.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare3(_ sender: UITapGestureRecognizer) {
        square3.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare4(_ sender: UITapGestureRecognizer) {
        square4.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare5(_ sender: UITapGestureRecognizer) {
        square5.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare6(_ sender: UITapGestureRecognizer) {
        square6.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare7(_ sender: UITapGestureRecognizer) {
        square7.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare8(_ sender: UITapGestureRecognizer) {
        square8.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    @IBAction func tapSquare9(_ sender: UITapGestureRecognizer) {
        square9.backgroundColor = #colorLiteral(red: 0.5096693635, green: 0.266243875, blue: 0.2682249546, alpha: 1)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
