/*
 Construa um programa que lê um número N a partir do teclado e calcula todos os números primos entre 2 e
 N
*/

var number = 0

// ler e validar a entrada
var valid = false
while !valid {
    if let input = readLine(), let innberNumber = Int(input) {
        valid = true
        
        number = innberNumber
    } else {
        print("Entrada inválida")
    }
}

// encontrar números primos
var numerosPrimos: [Int] = []

if number > 1 {
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
            numerosPrimos.append(i)
        }
    }
}

print("Números primos entre 2 e \(number): \n\(numerosPrimos)")
