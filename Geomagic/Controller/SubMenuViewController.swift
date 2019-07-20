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
    var shape:Shape?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()

        // Do any additional setup after loading the view.
    }
    @IBAction func backTapped(_ sender: Any) {
        self.performSegueToReturnBack()
        
    }
    
    func prepareView() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        titleLabel.text = shape?.shapeName
        
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
