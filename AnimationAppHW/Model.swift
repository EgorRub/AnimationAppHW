//
//  model.swift
//  AnimationAppHW
//
//  Created by Егор on 03.08.2021.
//

import Spring

struct Animation {
    let animation: String
    let curve: String
    let duration: Double
    let rotate: Double
    let velocity: Double
}

//extension Animation {
//    static func getAnimationList() -> [Animation] {
//        var list: [Animation] =  []
//
//        let randomeAnimation = DataManager.shared.animations.randomElement()
//        let randomeCurve = DataManager.shared.curve.randomElement()
//}
//return list
//}





enum AnimationState: Int {
case first
case second
case third
case fourth
    
}
