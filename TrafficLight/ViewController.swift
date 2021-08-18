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
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        redLightView.layer.cornerRadius = 40
        
        yellowLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 40
        
        greenLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 40
        
        changeLightButton.layer.cornerRadius = 15
        
    }
    var countPressButton = 0
    @IBAction func changeLightButtonPressed(_ sender: UIButton) {
        countPressButton += 1
        if countPressButton % 3 == 1 {
        redLightView.alpha = 1
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
            changeLightButton.setTitle("Next", for: .normal)
        } else if countPressButton % 3 == 2 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
}

