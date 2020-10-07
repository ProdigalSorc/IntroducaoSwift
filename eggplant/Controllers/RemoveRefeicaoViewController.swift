//
//  RemoveRefeicaoViewController.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 07/10/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class RemoveRefeicaoViewController {
    let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void){
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert)
        let botaoCancelar = UIAlertAction(title: "cancelar", style: .cancel)
        alerta.addAction(botaoCancelar)
        
        let botaoRemover = UIAlertAction(title: "remover", style: .destructive, handler: handler)
        alerta.addAction(botaoRemover)
        controller.present(alerta, animated: true, completion: nil)
    }
}
