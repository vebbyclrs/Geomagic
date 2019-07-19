//
//  ViewController.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 09/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController {

    @IBOutlet var buttonMulai: RoundButton!
    var backgroundMusic : AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        initBackgroundMusic()
        prepareView()
        
        // Do any additional setup after loading the view.
    }
    
    func initBackgroundMusic(){
        guard let path = Bundle.main.path(forResource: "backsound", ofType: "mp3") else {return}
        let url = URL(fileURLWithPath: path)
        
        backgroundMusic = try? AVAudioPlayer(contentsOf: url, fileTypeHint: nil)
        
        backgroundMusic?.prepareToPlay()
        
        backgroundMusic?.setVolume(0.2, fadeDuration: 0.1)
        
        backgroundMusic?.play()
        
    }

    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        let _ = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    func prepareView () {
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        buttonMulai.giveShadow(x: 3.0, y: 3.0, opacity: 0.5, blur: 10,shadowColor: UIColor.black.cgColor)
    }
    
    @IBAction func mulaiTapped(_ sender: Any) {
        performSegue(withIdentifier: "startSegue", sender: self)
    }
    
}

