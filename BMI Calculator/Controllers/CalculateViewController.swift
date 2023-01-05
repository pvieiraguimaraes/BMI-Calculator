//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiData = BMIData(height: 1.5, weight: 100)

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var wightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func handlerHeight(_ sender: UISlider) {
        let h = String(format: "%.2fm", sender.value)
        bmiData.updateHeight(sender.value)
        heightLabel.text = h
    }

    @IBAction func handleWeight(_ sender: UISlider) {
        let w = String("\(Int(sender.value))Kg")
        bmiData.updateWeight(sender.value)
        wightLabel.text = w
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        bmiData.calculate()
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let dest = segue.destination as! ResultViewController
            dest.bmiValue = bmiData
        }
    }
}

