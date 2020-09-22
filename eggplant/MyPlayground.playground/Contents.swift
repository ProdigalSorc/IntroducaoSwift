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
