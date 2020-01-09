//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["Soft": 5, "Medium": 8, "Hard": 12]

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        if hardness == "Soft" {
            print(eggTime["Soft"])
        } else if hardness == "Medium" {
            print(eggTime["Medium"])
        } else if hardness == "Hard" {
            print(eggTime["Hard"])
        }
    }
    
}
