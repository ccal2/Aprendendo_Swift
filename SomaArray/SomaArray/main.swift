/*
 Crie um programa que, dado um array de números qualquer, devolve a soma desses números. Crie vários
 arrays com diferentes elementos para testar seu programa.
*/

// tamanho do array
let size = 5

// lê e valida a entrada
var vector: [Int] = []

for _ in 0...size-1 {
    var valid = false
    
    while !valid {
        if let input = readLine(), let number = Int(input) {
            valid = true
            
            vector.append(number)
        }
    }
}

// soma os elementos do array
var sum = 0
for i in 0...size-1 {
    sum = sum + vector[i]
}

print("Soma = \(sum)")
