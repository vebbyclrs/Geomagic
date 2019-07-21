//
//  SubmenuSegitigaViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 21/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit

class SubmenuSegitigaViewController: UIViewController {

    private var selectedTriangle : SegitigaTypes?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! InformationPageViewController
        destination.segitigaType = selectedTriangle!
    }
    
    @IBAction func samaSisiTapped(_ sender: Any) {
        selectedTriangle = .segitigaSamaSisi
        performSegue(withIdentifier: "goToIntroduction", sender: self)
    }
    
    @IBAction func samaKakiTapped(_ sender: Any) {
        selectedTriangle = .segitigaSamaKaki
        performSegue(withIdentifier: "goToIntroduction", sender: self)
    }
    
    @IBAction func sembarangTapped(_ sender: Any) {
        selectedTriangle = .segitigaSembarang
        performSegue(withIdentifier: "goToIntroduction", sender: self)
    }
    
    @IBAction func lancipTapped(_ sender: Any) {
        selectedTriangle = .segitigaLancip
        performSegue(withIdentifier: "goToIntroduction", sender: self)
    }
    
    @IBAction func sikuSikuTapped(_ sender: Any) {
        selectedTriangle = .segitigaSikuSiku
        performSegue(withIdentifier: "goToIntroduction", sender: self)
    }
    
    @IBAction func tumpulTapped(_ sender: Any) {
        selectedTriangle = .segitigaTumpul
        performSegue(withIdentifier: "goToIntroduction", sender: self)
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegueToReturnBack()
    }
    
}
