//
//  AdicionarItensViewController.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 05/10/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class AdicionarItensViewController: UIViewController {

    @IBOutlet weak var labelNome: UITextField!
    @IBOutlet weak var labelCalorias: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = labelNome.text, let calorias = labelCalorias.text, let numeroCalorias = Double(calorias) else {
            return
        }
        
        let item = Item(nome: nome, calorias: numeroCalorias)
        navigationController?.popViewController(animated: true)
    }
}
