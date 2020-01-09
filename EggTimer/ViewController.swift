//
//  ViewController.swift
//  EggTimer
//
//  Created by Mohammad Agung Pambudi on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["Soft": 300, "Medium": 420, "Hard": 720]
    var counter = 10

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        counter = eggTime[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if counter > 0 {
            print(counter)
            counter -= 1
        }
    }

}
