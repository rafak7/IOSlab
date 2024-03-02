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
    @IBOutlet weak var TipoIMC: UITextField!
    
    func numberToFloat (_ numberStr: String) -> Float {
        Float(numberStr)!
    }
    
    @IBAction func btnCalc(_ sender: Any) {
        let calc = numberToFloat(Peso.text!) / (numberToFloat(Altura.text!) * numberToFloat(Altura.text!))
        Result.text = "Seu IMC é \(calc)"
        
        if (calc < 16.5) {
            TipoIMC.text = "Peso severamente abaixo"
        } else if (calc < 18.5) {
            TipoIMC.text = "Peso abaixo"
        } else if (calc < 18.5 && calc < 24.99) {
            TipoIMC.text = "Peso normal"
        } else if (calc < 29.99) {
            TipoIMC.text = "Pre-obeso"
        } else if (calc < 34.99) {
            TipoIMC.text = "Obesidade classe I"
        } else if (calc < 39.99) {
            TipoIMC.text = "Obesidade classe II"
        } else if (calc < 40) {
            TipoIMC.text = "Obesidade classe III"
        }
            
        
    }
    

}

