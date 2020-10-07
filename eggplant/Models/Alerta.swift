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
    func exibe() {
        let alerta = UIAlertController(title: "Erro", message: "Erro ao atualizar a tabela", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta, animated: true, completion: nil)
    }

}
