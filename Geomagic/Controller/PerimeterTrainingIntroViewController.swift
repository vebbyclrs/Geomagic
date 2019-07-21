//
//  PerimeterTrainingIntroViewController.swift
//  Geomagic
//
//  Created by Dany Hakim on 19/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class PerimeterTrainingIntroViewController: UIViewController {

    @IBOutlet weak var labelExplanation: UILabel!
 
    @IBOutlet weak var label7up: UILabel!
    @IBOutlet weak var label3left: UILabel!
    @IBOutlet weak var label7down: UILabel!
    @IBOutlet weak var label3right: UILabel!
    @IBOutlet weak var labelPlus1: UILabel!
    @IBOutlet weak var labelPlus2: UILabel!
    @IBOutlet weak var labelPlus3: UILabel!
    @IBOutlet weak var labelEqual: UILabel!
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var boxResult: UIView!
    @IBOutlet weak var box1label: UILabel!
    @IBOutlet weak var box2label: UILabel!
    @IBOutlet weak var box3label: UILabel!
    @IBOutlet weak var box4label: UILabel!
    @IBOutlet weak var boxResultLabel: UILabel!
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
  
        // MARK: Animate Label Explanation
        UIView.animate(withDuration: 3,delay:1,animations: {
            self.labelExplanation.alpha = 1
        }){ _ in
            // MARK: Turn Off Label Explanation
            UIView.animate(withDuration: 3, delay:3,animations: {
                self.labelExplanation.alpha = 0
            }){_ in
                // MARK: Turn On Label on Rectangle Shape and Box Answer & Box Result
                UIView.animate(withDuration: 3, animations: {
                    self.label7up.alpha = 1
                    self.label7down.alpha = 1
                    self.label3left.alpha = 1
                    self.label3right.alpha = 1
                    self.box1.alpha = 1
                    self.labelPlus1.alpha = 1
                    self.box2.alpha = 1
                    self.labelPlus2.alpha = 1
                    self.box3.alpha = 1
                    self.labelPlus3.alpha = 1
                    self.box4.alpha = 1
                    self.labelEqual.alpha = 1
                    self.boxResult.alpha = 1
                }){_ in
                    // MARK: Animate First Label into Box
                    UILabel.animate(withDuration: 2, animations: {
                        self.label7up.frame = self.box1.frame
                    }){_ in
                        // MARK: Animate Second Label into Box
                        self.box1label.isHidden = false
                        UILabel.animate(withDuration: 2, animations: {
                            self.label3left.frame = self.box2.frame
                        }){_ in
                            // MARK: Animate Third Label into Box
                            self.box2label.isHidden = false
                            UILabel.animate(withDuration: 2, animations: {
                                self.label7down.frame = self.box3.frame
                            }){_ in
                                // MARK: Animate Last Label into Box
                                self.box3label.isHidden = false
                                
                                UILabel.animate(withDuration: 2, animations: {
                                    self.label3right.frame = self.box4.frame
                                }){_ in
                                    // MARK: Show Result
                                    self.box4label.isHidden = false
                                    
                                    UILabel.animate(withDuration: 2, animations: {
                                        self.boxResultLabel.alpha = 1
                                    })
                                }
                            }
                        }
                    }
                }
            }
        }
        
       view.initialView()
    }
    

}
