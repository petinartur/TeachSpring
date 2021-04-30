//
//  ViewController.swift
//  TeachSpring
//
//  Created by Артур Петин on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var animeteTittle: UILabel!
    @IBOutlet weak var springAnimation: SpringView!
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        animeteTittle.text = animation.description
        
        springAnimation.animation = animation.name
        springAnimation.force = CGFloat(animation.force)
        springAnimation.delay = CGFloat(animation.delay)
        springAnimation.duration = CGFloat(animation.duration)
        springAnimation.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
    
}

