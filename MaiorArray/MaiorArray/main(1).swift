/*
 
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

print("Vetor: \(vector)")

// encontra o maior
var maior = vector[0]

for i in 1...size-1 {
    if vector[i] > maior {
        maior = vector[i]
    }
}

print("Maior elemento = \(maior)")
