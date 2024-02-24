//
//  ViewController.swift
//  Calculator
//
//  Created by iOSLab on 24/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var result: UITextField!
    
    func numberToFloat (_ numberStr: String) -> Float {
        Float(numberStr)!
    }
    
    
    @IBAction func btnSoma(_ sender: Any)  {
        let calc = numberToFloat(num1.text!) + numberToFloat(num2.text!)
        result.text = "A soma é: \(calc)"
    }

    @IBAction func btnSubtracao(_ sender: Any) {
        let calc = numberToFloat(num1.text!) - numberToFloat(num2.text!)
        result.text = "A subtracao é: \(calc)"
    }

    
    @IBAction func btnDivisao(_ sender: Any) {
        let calc = numberToFloat(num1.text!) / numberToFloat(num2.text!)
        result.text = "A divisao é: \(calc)"
    }
    
    
    @IBAction func btnMulti(_ sender: Any) {
        let calc = numberToFloat(num1.text!) * numberToFloat(num2.text!)
        result.text = "A multiplicacao é: \(calc)"
    }
    
    
    
}

