//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Vasichko Anna on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = redView.bounds.height / 2
        yellowView.layer.cornerRadius = yellowView.bounds.height / 2
        greenView.layer.cornerRadius = greenView.bounds.height / 2
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        startButton.setTitle("START", for: .normal)
    }

    @IBAction func startPressed() {
        
        if redView.alpha == 0.3 {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        }
        if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
        if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
}

