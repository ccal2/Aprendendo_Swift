/*
 Obter todos os números primos menores ou iguais a N >= 2
*/

func encontraPrimos (number: Int) -> [Int] {
    var primos: [Int] = []
    
    for i in 2...number {
        // verificar se é primo
        var primo = true
        
        
        if i > 2 {
            for j in 2...i-1{
                if i%j == 0 {
                    primo = false
                    
                    break
                }
            }
            
        }
        
        // se o número for primo, adicionar ao vetor
        if primo {
            primos.append(i)
        }
    }
    
    return primos
}

func main () {
    var number = 0

    // ler e validar a entrada
    print("Digite um número maior que 2")
    var valid = false
    while !valid {
        if let input = readLine(), let innberNumber = Int(input) {
            if innberNumber > 2 {
                valid = true
                number = innberNumber
            } else {
                print("O número deve ser maior que 2!")
            }
        } else {
            print("Entrada inválida")
        }
    }

    let numerosPrimos: [Int] = encontraPrimos(number: number)

    print("Números primos menores ou iguais a \(number): \n\(numerosPrimos)")
}

////////

main()
