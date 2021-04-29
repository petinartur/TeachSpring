//
//  ViewController.swift
//  TeachSpring
//
//  Created by Артур Петин on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    let myAnimation = Animations.getAnimation()
    
    @IBOutlet weak var animeteTittle: UILabel!
    
    @IBOutlet weak var springAnimation: SpringView!

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        let animate = myAnimation.randomElement()
        springAnimation.animation = animate?.nameAnimate ?? "shake"
        springAnimation.force = CGFloat(animate?.force ?? 1)
        springAnimation.duration = CGFloat(animate?.duration ?? 1)
        springAnimation.animate()
        
        animeteTittle.text = String(animate?.title ?? "not found")
        
        sender.animation = "squeezeUp"
        sender.animate()
    }
    
    
}

