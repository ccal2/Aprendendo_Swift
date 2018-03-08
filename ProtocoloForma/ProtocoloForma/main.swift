/*
 1) Faça com que Retangulo e Circulo também estejam em conformidade com Forma.
 
 
 2) Adicione a seguinte função a Forma e a Retangulo, Circulo e Ponto:
 
       func incluiPonto(_ ponto:Ponto) -> Bool
 
    Essa função deve verificar se, dado um ponto, esse ponto está dentro ou fora da superfície
   da forma geométrica.
 
 
 3) Adicione a seguinte função a Forma e a Retangulo, Circulo e Ponto:
 
       func incluiForma(_ outra:Forma) -> Bool
 
    Essa função deve verificar se a forma recebida como argumento está inclusa na forma alvo da
   função.
 
 
 4) Adicione uma função mover:x:y: a cada forma geométrica. Essa função move cada forma em x
   unidades horizontais e y verticais.
 
*/

import Foundation

protocol Forma {
    func area () -> Double
    func igual (a outra: Forma) -> Bool
    func incluiPonto (_ ponto: Ponto) -> Bool
    //func incluiForma (_ outra: Forma) -> Bool
    mutating func mover (x: Double, y: Double)
}

struct Ponto: Forma {
    var x: Double
    var y: Double
    
    func area () -> Double {
        return 0
    }
    
    func igual (a outra: Forma) -> Bool {
        if let pt = outra as? Ponto {
            return self.x == pt.x && self.y == pt.y
        } else {
            return false
        }
    }
    
    func incluiPonto (_ ponto: Ponto) -> Bool {
        return self.igual(a: ponto)
    }
    
    func incluiForma (_ outra: Forma) -> Bool {
        if let pt = outra as? Ponto {
            return self.igual(a: pt)
        } else if let ret = outra as? Retangulo {
            if ret.altura == 0 && ret.largura == 0 {
                return self.igual(a: ret.centro)
            }
        } else if let circ = outra as? Circulo {
            if circ.raio == 0 {
                return self.igual(a: circ.centro)
            }
        }
        
        return false
    }
    
    mutating func mover (x: Double, y: Double) {
        self.x += x
        self.y += y
    }
    
    func distancia (para ponto: Ponto) -> Double {
        return sqrt((pow(self.x - ponto.x, 2)) + (pow(self.y - ponto.y, 2)))
    }
}

struct Retangulo: Forma {
    var altura: Double
    var largura: Double
    var centro: Ponto
    
    func area () -> Double {
        return altura * largura
    }
    
    func igual (a outra: Forma) -> Bool {
        if let ret = outra as? Retangulo {
            return self.altura == ret.altura && self.largura == ret.largura && self.centro.igual(a: ret.centro)
        } else {
            return false
        }
    }
    
    func incluiPonto (_ ponto: Ponto) -> Bool {
        return ponto.x >= (self.centro.x - self.largura/2) && ponto.x <= (self.centro.x + self.largura/2) && ponto.y >= (self.centro.y - self.altura/2) && ponto.y <= (self.centro.y + self.altura/2)
    }
    
    func incluiForma (_ outra: Forma) -> Bool {
        if let pt = outra as? Ponto {
            return self.incluiPonto(pt)
        } else if let ret = outra as? Retangulo {
            return ((ret.centro.x - ret.largura/2) >= (self.centro.x - self.largura/2)
                    && (ret.centro.x + ret.largura/2) <= (self.centro.x + self.largura/2)
                    && (ret.centro.y - ret.altura/2) >= (self.centro.y - self.altura/2)
                    && (ret.centro.y + ret.altura/2) <= (self.centro.y + self.altura/2))
        } else if let circ = outra as? Circulo {
            return ((circ.centro.x - circ.raio) >= (self.centro.x - self.largura/2)
                && (circ.centro.x + circ.raio) <= (self.centro.x + self.largura/2)
                && (circ.centro.y - circ.raio) >= (self.centro.y - self.altura/2)
                && (circ.centro.y + circ.raio) <= (self.centro.y + self.altura/2))
        }
        
        return false
    }
    
    mutating func mover (x: Double, y: Double) {
        self.centro.x += x
        self.centro.y += y
    }
}

struct Circulo {
    var raio: Double
    var centro: Ponto
    
    func area () -> Double {
        return Double.pi * raio * raio
    }
    
    func igual (a outra: Forma) -> Bool {
        if let circ = outra as? Circulo {
            return self.raio == circ.raio && self.centro.igual(a: circ.centro)
        } else {
            return false
        }
    }
    
    func incluiPonto (_ ponto: Ponto) -> Bool {
        return self.centro.distancia(para: ponto) <= raio
    }
    
    func incluiForma (_ outra: Forma) -> Bool {
        if let pt = outra as? Ponto {
            return self.incluiPonto(pt)
        } else if let ret = outra as? Retangulo {
            
        } else if let circ = outra as? Circulo {
            
        }
        
        return false
    }
    
    mutating func mover (x: Double, y: Double) {
        self.centro.x += x
        self.centro.y += y
    }
}
