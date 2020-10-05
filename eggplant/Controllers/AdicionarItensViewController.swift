//
//  AdicionarItensViewController.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 05/10/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {

    var delegate: AdicionaItensDelegate?
    @IBOutlet weak var labelNome: UITextField!
    @IBOutlet weak var labelCalorias: UITextField!
    
    init(_ delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = labelNome.text, let calorias = labelCalorias.text, let numeroCalorias = Double(calorias) else {
            return
        }
        
        let item = Item(nome: nome, calorias: numeroCalorias)
        delegate?.add(item)
        navigationController?.popViewController(animated: true)
    }
}
