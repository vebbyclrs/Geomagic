//
//  PerimeterTrainingFormulaViewController.swift
//  Geomagic
//
//  Created by Dany Hakim on 20/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class PerimeterTrainingFormulaViewController: UIViewController {

    @IBOutlet weak var labelIntroduction: UILabel!
    @IBOutlet weak var formulaView: UIView!
    @IBOutlet weak var labelExplanation: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        UIView.animate(withDuration: 3,delay:1,animations: {
            self.labelIntroduction.alpha = 1
        }){_ in
            
            UIView.animate(withDuration: 3,delay:5,animations: {
                self.formulaView.alpha = 1
            }){_ in
                
                UIView.animate(withDuration: 3,delay:5,animations: {
                    self.labelExplanation.alpha = 1
                    
                    self.performSegue(withIdentifier: "moveToTrainingFormulaExercise", sender: self)
                })
                
            }
            
            
        }
        
        view.initialView()
    }
    

}
