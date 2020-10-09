//
//  ItemDao.swift
//  eggplant
//
//  Created by Rodrigo Paixão on 09/10/20.
//  Copyright © 2020 Rodrigo Paixão. All rights reserved.
//

import Foundation

class ItemDao {
    func save(_ itens: [Item]){
        guard let caminho = recuperaDiretorio() else { return }
        do {
            let dados = try NSKeyedArchiver.archivedData(withRootObject: itens, requiringSecureCoding: false)
            try dados.write(to: caminho)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func recupera() -> [Item] {
        guard let caminho = recuperaDiretorio() else { return [] }
        do {
            let dados = try Data(contentsOf: caminho)

            guard let itensSalvas = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(dados) as? [Item] else {
                return []
            }
            return itensSalvas
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    func recuperaDiretorio() -> URL? {
        guard let diretorio = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return nil
        }
        return diretorio.appendingPathComponent("itens")
    }
    
}
