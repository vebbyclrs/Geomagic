//
//  SquareAreaEndViewController.swift
//  Geomagic
//
//  Created by Jasmine Hanifa Mounir on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SquareAreaEndViewController: UIViewController {

    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        // Do any additional setup after loading the view.
    }
    
    func customButton(){
        buttonOutlet.layer.cornerRadius = 30
        buttonOutlet.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        buttonOutlet.layer.shadowOpacity = 0.2
        let roundedButton = CGRect(x: 8, y: 8, width: buttonOutlet.frame.width, height: buttonOutlet.frame.height)
        buttonOutlet.layer.shadowPath = UIBezierPath(roundedRect: roundedButton, cornerRadius: CGFloat(34.0)).cgPath
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
