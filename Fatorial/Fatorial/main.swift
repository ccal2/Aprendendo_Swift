var number: Int = 0

// lê e valida a entrada
var valid = false
while valid == false {
    if let input = readLine(), let  numberInterno = Int(input){
        valid = true
        
        number = numberInterno
    } else {
        print("Entrada inválida")
    }
}

// calcula o fatorial
var fatorial = 1

if number != 0 {
    for i in 1...number {
        fatorial = fatorial * i
    }
}

// imprime o resultado
print("\(number)! = \(fatorial)")
