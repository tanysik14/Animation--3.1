//
//  ViewController.swift
//  Animation--3.1
//
//  Created by Tatsiana Pauliukova on 20.02.23.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var informationLabel: UILabel!
    @IBOutlet var presetButtonLabel: UIButton!
    
    var animation = Animation.randomAnimation()


    @IBAction func nextAnimationButton(_ sender: SpringButton) {
        informationLabel.text = (
            "preset: \(animation.preset) \n curve: \(animation.curve) \n force: \(animation.force) \n duration \(animation.duration) \n delay: \(animation.delay) "
        )
        
        animationView.animation = animation.preset
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()

        animation = Animation.randomAnimation()
        presetButtonLabel.setTitle("Press \(animation.preset)", for: .normal)
     
    }
}

