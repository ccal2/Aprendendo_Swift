/*
 Defina um struct Retangulo que guarda os dois lados de um retângulo e um Ponto correspondente ao seu
 centro. Essa struct deve incluir funções para:
     - calcular a área do retângulo;
     - verificar se dois retângulos são iguais; e
     - calcular a distância entre tal retângulo e um ponto qualquer.
*/

import Foundation // sqrt

struct Ponto {
    var x: Double
    var y: Double
    
    func igual (a p: Ponto) -> Bool {
        return self.x == p.x && self.y == p.y
    }
    
    func distancia (de p: Ponto) -> Double {
        let diffX = self.x - p.x
        let diffY = self.y - p.y
        
        let sumSqs = diffX*diffX + diffY*diffY
        
        return sqrt(sumSqs)
    }
}

struct Retangulo {
    var lado1: Double
    var lado2: Double
    var centro: Ponto
    
    func area () -> Double {
        return lado1*lado2
    }
    
    func igual (a r: Retangulo) -> Bool {
        return self.lado1 == r.lado1 && self.lado2 == r.lado2 && self.centro.igual(a: r.centro)
    }

    func distancia (de p: Ponto) -> Double {
        return self.centro.distancia(de: p)
    }
}


func main () {
    let centro1 = Ponto(x: 0.0, y: 0.0)
    let centro2 = Ponto(x: 3.7, y: 9.1)
    
    let ret1 = Retangulo(lado1: 4, lado2: 6, centro: centro1)
    let ret2 = Retangulo(lado1: 7, lado2: 3, centro: centro2)
    let ret3 = Retangulo(lado1: 4, lado2: 6, centro: centro1)
    
    print(ret1.area())
    print(ret1.igual(a: ret2))
    print(ret1.igual(a: ret3))
    print(ret1.distancia(de: Ponto(x: 4.0, y: 3.0)))
}


main()
