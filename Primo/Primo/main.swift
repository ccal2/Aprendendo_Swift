/*
 Construa um programa que lê um número X a partir do teclado e verifica se ele é primo. Seu programa
 deve informar ao usuário se X é primo ou não.
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

// verificar se é primo
var primo = true
if number == 1 || number == 0 {
    primo = false
} else if number > 2 {
    for i in 2...number-1{
        if number%i == 0 {
            primo = false
            
            break
        }
    }
}

if primo {
    print("\(number) é primo")
} else {
    print("\(number) não é primo")
}
