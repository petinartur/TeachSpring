//
//  Animations.swift
//  TeachSpring
//
//  Created by Артур Петин on 28.04.2021.
//

struct Animations {
    let nameAnimate: String
    let force: Int
    let duration: Int
    
    var title: String{
        "animation \(nameAnimate), force \(force), duration \(duration)"
    }
    
    static func getAnimation() -> [Animations]{
        [
            Animations(
                nameAnimate: "slideLeft",
                force: 1,
                duration: 2
            ),
            Animations(
                nameAnimate: "fadeIn",
                force: 2,
                duration: 1
            ),
            Animations(
                nameAnimate: "shake",
                force: 1,
                duration: 1
            ),
            Animations(
                nameAnimate: "pop",
                force: 2,
                duration: 2
            ),
            Animations(
                nameAnimate: "morph",
                force: 1,
                duration: 2
            )
        ]
    }
}
