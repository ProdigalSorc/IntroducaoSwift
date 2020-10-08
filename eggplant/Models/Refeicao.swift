//
//  Refeicao.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 29/09/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    let nome:String
    let felicidade: Int
    let itens: [Item]
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(felicidade, forKey: "felicidade")
        coder.encode(itens, forKey: "itens")
    }
    
    required init?(coder: NSCoder) {
        nome = coder.decodeObject(forKey: "nome") as! String
        felicidade = coder.decodeInteger(forKey: "felicidade")
        itens = coder.decodeObject(forKey: "itens") as! [Item]
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade \(felicidade)"
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        return mensagem
    }
}
