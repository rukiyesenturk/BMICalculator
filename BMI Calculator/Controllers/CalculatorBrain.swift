//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Macbook on 10.03.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    func getBMIValue() ->String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI(heigt: Float, weight: Float){
        let bmiValue = weight / ( heigt * heigt)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.05931756645, green: 0.6660916209, blue: 0.8679254055, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.0635387525, green: 0.8568137884, blue: 0.6508280635, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9952867627, green: 0.2099304199, blue: 0.003477121936, alpha: 1))
        }
    }
    func getAdvice() ->String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() ->UIColor{
        return bmi?.color ?? UIColor.white
    }
}
