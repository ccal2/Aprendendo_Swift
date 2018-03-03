/*
 Dado um número N, fornecido pelo usuário, calcule todas as médias aritméticas dos números entre 1 e j,
 para todo número j tal que j <= N.
*/

var number = 0

// lê e valida a entrada
var valid = false
while !valid {
    if let input = readLine(), let innerNumber = Int(input) {
        valid = true
        
        number = innerNumber
    } else {
        print("Entrada inválida")
    }
}

// calcula e imprime as médias
var sum = 0.0
for j in 1...number {
    sum = sum + Double(j)
    
    print("Média dos números entre 1 e \(j) = \(sum/Double(j))")
}
