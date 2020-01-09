//
//  ViewController.swift
//  EggTimer
//
//  Created by Mohammad Agung Pambudi on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelKondisi: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTime = ["Soft": 3, "Medium": 4, "Hard": 720]
    var timer = Timer()
    var totalTime = 0
    var timePassed = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        totalTime = eggTime[hardness]!
        timePassed = 0
        labelKondisi.text = "How do you like your eggs?"
        timer.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if timePassed < totalTime {
            print(totalTime - timePassed)
            timePassed += 1
            
//            update progress bar
            progressBar.progress = Float(timePassed) / Float(totalTime)
            print(progressBar.progress)
        } else {
            labelKondisi.text = "Done!"
        }
    }
}
