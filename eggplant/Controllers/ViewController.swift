//
//  ViewController.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 22/09/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource {
    
    var delegate: AdicionaRefeicaoDelegate?
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adicionar() {
        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
            if let felicidade = Int(felicidadeDaRefeicao) {
                let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
                delegate?.add(refeicao)
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = "teste"
        return celula
    }
}

