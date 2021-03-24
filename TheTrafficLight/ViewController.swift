//
//  ViewController.swift
//  TheTrafficLight
//
//  Created by Владимир Мурашка on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var toggleButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 75
        redView.alpha = 0.3
        
        yellowView.layer.cornerRadius = 75
        yellowView.alpha = 0.3
        
        greenView.layer.cornerRadius = 75
        greenView.alpha = 0.3
        
        
    }

    @IBAction func toggelButtonPressed() {
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        } else {
            redView.alpha = 1
            toggleButton.setTitle("Next", for: .normal)
        }
    }
}

    


