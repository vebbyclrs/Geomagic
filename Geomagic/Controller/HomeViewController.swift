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
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        setButtonView()
        initBackgroundMusic()
        
        
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
    
    func setButtonView() {
        buttonMulai.layer.shadowRadius = 4
        buttonMulai.layer.shadowOpacity = 0.5
        let roundedRect = CGRect(x: 0, y: 2, width: buttonMulai.frame.width, height: buttonMulai.frame.height)
        buttonMulai.layer.shadowPath = UIBezierPath(roundedRect: roundedRect, cornerRadius: buttonMulai.cornerRadius).cgPath
    }
    
    


}

