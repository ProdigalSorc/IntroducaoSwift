//
//  ViewController.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 22/09/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tableViewController: RefeicoesTableViewController?
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adicionar() {
        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
            if let felicidade = Int(felicidadeDaRefeicao) {
                let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
                tableViewController?.add(refeicao)
                navigationController?.popViewController(animated: true)
            }
        }
    }
}

