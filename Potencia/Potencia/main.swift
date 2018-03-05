/*
 Defina uma função que, dado um número n, eleva ele à x-ésima potência. Não pode usar o operador de
 potenciação!
*/

func potencia (n: Double, x: Int) -> Double {
    var resultado = 1.0
    
    for _ in 1...x {
        resultado = resultado * n
    }
    
    return resultado
}

func main () {
    let number = 5.7
    let pot = 3
    
    print("\(number)ˆ\(pot) = \(potencia(n: number, x: pot))")
}


main()
