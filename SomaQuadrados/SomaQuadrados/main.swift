/*
 Defina uma função que, dados dois números, devolve a soma dos seus quadrados. Use a função definida na
 questão anterior para resolver esta
*/

func quadrado (_ number: Int) -> Int {
    return number*number
}

func main () {
    var number1 = 0
    var number2 = 0
    var valid = false
    
    print("número 1: ", terminator: "")
    while !valid {
        if let input = readLine(), let innerNumber = Int(input) {
            valid = true
            
            number1 = innerNumber
        } else {
            print("Entrada inválida")
        }
    }
    
    print("número 2: ", terminator: "")
    valid = false
    while !valid {
        if let input = readLine(), let innerNumber = Int(input) {
            valid = true
            
            number2 = innerNumber
        } else {
            print("Entrada inválida")
        }
    }
    
    print("\(number1)^2 + \(number2)^2 = \(quadrado(number1) + quadrado(number2))")
}

main()
