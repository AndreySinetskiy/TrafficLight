//
//  ViewController.swift
//  TrafficLight
//
//  Created by 1 on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var changeLightButton: UIButton!
    
    private var countPressButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        
        yellowLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.height / 2
        
        greenLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.size.height / 2
        
        changeLightButton.layer.cornerRadius = 15
        
    }
    @IBAction func changeLightButtonPressed(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        countPressButton += 1
        if countPressButton % 3 == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if countPressButton % 3 == 2 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
}

