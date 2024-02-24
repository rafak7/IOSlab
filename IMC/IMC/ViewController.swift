//
//  ViewController.swift
//  IMC
//
//  Created by iOSLab on 24/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Peso: UITextField!
    @IBOutlet weak var Altura: UITextField!
    @IBOutlet weak var Result: UITextField!
    
    func numberToFloat (_ numberStr: String) -> Float {
        Float(numberStr)!
    }
    
    @IBAction func btnCalc(_ sender: Any) {
        let calc = numberToFloat(Peso.text!) / (numberToFloat(Altura.text!) * numberToFloat(Altura.text!))
        Result.text = "Seu IMC é \(calc)"
    }
    

}

