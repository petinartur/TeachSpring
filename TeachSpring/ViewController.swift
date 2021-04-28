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
        for animate in myAnimation{
        springAnimation.animation = animate.nameAnimate
        springAnimation.force = CGFloat(animate.force)
        springAnimation.duration = CGFloat(animate.duration)
        springAnimation.animate()
        
        animeteTittle.text = String(animate.title)
        }
        sender.animation = "squeezeUp"
        sender.animate()
    }
    
    
}

