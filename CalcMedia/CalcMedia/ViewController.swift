//
//  ViewController.swift
//  CalcMedia
//
//  Created by iOSLab on 16/03/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nota1: UITextField!
    @IBOutlet weak var nota2: UITextField!
    @IBOutlet weak var nota3: UITextField!
    @IBOutlet weak var nota4: UITextField!
    
    @IBAction func btnCalc(_ sender: Any) {
        guard let notaUmDouble = Double(nota1.text ?? ""),
              let notaDoisDouble = Double(nota2.text ?? ""),
              let notaTresDouble = Double(nota3.text ?? ""),
              let notaQuatroDouble = Double(nota4.text ?? "")
        else {
            resultMedia.text = "Digitar valor numérico valido"
            resultAluno.isHidden = true
            result.isHidden = true
            return
        }
        let media = (notaUmDouble + notaDoisDouble + notaTresDouble + notaQuatroDouble) / 4
        
        resultAluno.isHidden = false
        result.isHidden = false
        if (media < 5) {
            let initialTxt = resultAluno.text ?? ""
            resultAluno.text =  initialTxt + "valor abaixo da media"
        } else if (media > 5) {
            let initialTxt = resultAluno.text ?? ""
            resultAluno.text = initialTxt + "valor acima da media"
        }
        if (media < 5) {
            let initialTxt = result.text ?? ""
            result.text = initialTxt + "Reprovado"
        }else if (media > 5) {
            let initialTxt = result.text ?? ""
            result.text = initialTxt + "Aprovado"
        }
        
    }
    

    
    
    @IBOutlet weak var resultMedia: UILabel!
    @IBOutlet weak var resultAluno: UILabel!
    @IBOutlet weak var result: UILabel!
}

