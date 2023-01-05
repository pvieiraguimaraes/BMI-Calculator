//
//  BMIData.swift
//  BMI Calculator
//
//  Created by Pedro Guimarães on 04/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMIData {
    var height: Float
    var weight: Float
    var result: Float?
    
    init(height: Float, weight: Float, result: Float = 0) {
        self.height = height
        self.weight = weight
        self.result = result
    }
    
    mutating func updateHeight(_ value: Float) {
        self.height = value
    }
    
    mutating func updateWeight(_ value: Float){
        self.weight = value
    }
    
    mutating func calculate() {
        let h2 = self.height * self.height
        self.result = self.weight / h2
    }
    
    func getAdvice() -> String {
        if (self.result! < 18.5) {
            return "You need to eat more"
        } else if (self.result! > 18.5 && self.result! < 25) {
            return "You are in a good shape"
        } else {
            return "STOP EATING!!"
        }
    }
    
    func getColor() -> UIColor {
        if (self.result! < 18.5) {
            return .yellow
        } else if (self.result! > 18.5 && self.result! < 25) {
            return .green
        } else {
            return .red
        }
    }
}
