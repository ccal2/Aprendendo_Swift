/*
 Defina uma função que, dado um número, o eleva ao quadrado.
*/

func quadrado (_ number: Int) -> Int {
    return number*number
}

func main () {
    var number = 0
    var valid = false
    
    print("N: ", terminator: "")
    while !valid {
        if let input = readLine(), let innerNumber = Int(input) {
            valid = true
            
            number = innerNumber
        } else {
            print("Entrada inválida")
        }
    }
    
    print("\(number)^2 = \(quadrado(number))")
}

main()
