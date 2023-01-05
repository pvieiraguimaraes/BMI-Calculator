//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Pedro Guimarães on 04/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: BMIData = BMIData(height: 1.5, weight: 100)
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%.1f", bmiValue.result!)
        adviceLabel.text = bmiValue.getAdvice()
        
        view.backgroundColor = bmiValue.getColor()
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
