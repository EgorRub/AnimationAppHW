//
//  dataManager.swift
//  AnimationAppHW
//
//  Created by Егор on 03.08.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeInUp,
        .fadeOutIn,
        .zoomIn,
        .shake
    ]
    let curve: [Spring.AnimationCurve] = [
        .easeIn,
        .easeInBack,
        .easeInCubic,
        .linear
    ]
}
