//
//  Animations.swift
//  TeachSpring
//
//  Created by Артур Петин on 28.04.2021.
//

struct Animation {
    
    let name: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(name)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "sliderUp",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3
        )
    }
}
