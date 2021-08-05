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
    let duration: Float
    let force: Float
    let delay: Float
    
    var animations: String {
        "\(animation) \(curve) \(duration) \(force) \(delay)"
    }
}

extension Animation {
    static func getAnimationList() -> Animation {
        Animation(
            animation: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curve.randomElement()?.rawValue ?? "easeIn",
            duration: Float.random(in: 0...2),
            force: Float.random(in: 0...2),
            delay: 0.3)
}
}
