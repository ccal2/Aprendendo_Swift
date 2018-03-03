/*
 Construa um programa que lê um número inteiro N a partir do teclado e calcula a raiz cúbica inteira
 desse número, se houver. Caso não haja, ele deve informar isso ao usuário.
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

var found = false
var i = 0
var root = 0
while !found && i <= number {
    if i*i*i == number {
        found = true
        root = i
    }
    
    i = i + 1
}

if found {
    print("Raiz cúbica de \(number) = \(root)")
} else {
    print("\(number) não possui raiz cúbica inteira")
}
