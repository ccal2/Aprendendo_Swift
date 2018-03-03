/*
 Crie um programa que lê um inteiro N do teclado e calcula os fatoriais de todos os números entre 1 e N
 e os guarda em um array. Ao final da execução, o programa apresenta todos, separados por vírgulas (mas
 sem vírgula depois do último!)
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

// encontrar fatoriais
var fatoriais: [Int] = []

if number > 0 {
    fatoriais.append(1)
    
    if number > 1 {
        for i in 2...number {
            fatoriais.append(fatoriais[i-2]*i)
        }
    }
}

print("Fatoriais dos números entre 1 e \(number): \n\(fatoriais)")
