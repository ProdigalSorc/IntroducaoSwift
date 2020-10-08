//
//  Item.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 29/09/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder: NSCoder) {
        nome = coder.decodeObject(forKey: "nome") as! String
        calorias = coder.decodeDouble(forKey: "calorias")
    }
}
