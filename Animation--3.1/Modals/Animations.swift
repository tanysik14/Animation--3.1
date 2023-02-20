//
//  Animations.swift
//  Animation--3.1
//
//  Created by Tatsiana Pauliukova on 20.02.23.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func randomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.3...2),
            duration: Double.random(in: 0.3...2),
            delay: 1
        )
    }
}
    
