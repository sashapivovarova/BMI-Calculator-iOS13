//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anastasia Grey on 2024/04/28.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    var bmi: Float = 0.0
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBmiValue() -> String {
        let bmi1DecimalPlace = String(format: "%.1f", bmi)
        return bmi1DecimalPlace
    }
}
