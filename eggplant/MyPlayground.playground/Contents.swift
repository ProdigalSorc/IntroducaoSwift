import UIKit

let totalDeCalorias = [59,5, 100, 300, 500]

//for i in 0...3 {
//    print(totalDeCalorias[i])
//}
//
//for i in 0...totalDeCalorias.count-1 {
//    print(totalDeCalorias[i])
//}
//
//for calorias in totalDeCalorias {
//    print(calorias)
//}


func todaCalorias(totalDeCalorias: [Double]) -> Double {
    var total = 0.0
    for caloria in totalDeCalorias{
        total += caloria
    }
    
    return total
}

let total = todaCalorias(totalDeCalorias: [50.5, 100, 400])
print(total)



class Refeicao {
    var nome: String?
    var felicidade: String?
}

let refeicao = Refeicao()
refeicao.nome = "Macarrao"
print(refeicao.nome!)

if let nome = refeicao.nome {
    print(nome)
}

func exibeNomeRefeicao() {
    guard let nome = refeicao.nome else {
        return
    }
    print(nome)
}

exibeNomeRefeicao()

class Comida {
    var nome:String
    var felicidade: String
    var itens: [Item] = []
    
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
}

class Item {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}

let arroz = Item(nome: "Arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90.0)
let contraFile = Item(nome: "ContraFile", calorias: 287.0)
let comida = Comida(nome: "Macarrao", felicidade: "5")
comida.itens.append(arroz)
comida.itens.append(feijao)
comida.itens.append(contraFile)
print(comida.nome)
print(comida.totalDeCalorias())



