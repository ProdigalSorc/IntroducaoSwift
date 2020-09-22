//
//  ViewController.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 22/09/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func adicionar() {
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        print("comi \(nome) e fiquei com felicidade \(felicidade)")
    }
}

