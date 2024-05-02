//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anastasia Grey on 2024/04/28.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    func getBmiValue() -> String {
        let bmi1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1DecimalPlace
    }
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
    }
}
