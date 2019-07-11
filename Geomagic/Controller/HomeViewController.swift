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

    var backgroundMusic : AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
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


}

