//
//  Alerta.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 07/10/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class Alerta {
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta, animated: true, completion: nil)
    }

}
