//
//  Refeicao.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 29/09/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    let nome:String
    let felicidade: Int
    let itens: [Item]
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
}
