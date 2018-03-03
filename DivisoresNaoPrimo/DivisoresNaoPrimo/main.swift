/*
 Faça seu programa imprimir todos os divisores de um número não-primo diferentes de 1 e dele próprio.
 Apresente essa informação para o usuário após dizer para ele que o número não é primo.
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

// verificar se é primo e calcular divisores
var primo = true
var divisores: [Int] = []

if number == 1 || number == 0 {
    primo = false
} else if number > 2 {
    for i in 2...number-1{
        if number%i == 0 {
            primo = false
            
            divisores.append(i)
        }
    }
}

if primo {
    print("\(number) é primo")
} else {
    print("\(number) não é primo")
    
    print("\nDivisores de \(number) (diferentes de 1 e ele mesmo): \n\(divisores)")
}
