//
//  File.swift
//  Geomagic
//
//  Created by Vebby Clarissa on 12/07/19.
//  Copyright © 2019 Geomecin. All rights reserved.
//

import Foundation

final class AppData {
    //Class ini berguna untuk memanipulasi User Data: Apakah ini kali pertama aplikasi dijalankan?
    //Jika aplikasi pertama kali dijalankan, maka level user akan di-set = 0
    let userDefaults: UserDefaults = .standard
    var level : Int
    let wasLaunchedBefore: Bool
    var isFirstLaunch: Bool {
        return !wasLaunchedBefore
    }
    
    init() {
        let key = "com.any-suggestion.FirstLaunch.WasLaunchedBefore"
        let wasLaunchedBefore = userDefaults.bool(forKey: key)
        self.wasLaunchedBefore = wasLaunchedBefore
        if !wasLaunchedBefore {
            userDefaults.set(true, forKey: key)
            userDefaults.set(0, forKey: "level")
        }
        self.level = userDefaults.integer(forKey: "level")
    }
    
}
