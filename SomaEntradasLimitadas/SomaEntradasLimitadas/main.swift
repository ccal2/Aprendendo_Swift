/*
 Construa um programa que fica pedindo que o usuário digite números e os soma até que
 o usuário digite 0. Neste momento o programa deve imprimir o valor total da soma.
*/

var soma = 0.0
var number: Double = -1.0 // precisa inicializar

repeat {
    // lê e valida as entradas
    var valid = false
    while valid == false {
        if let input = readLine(), let numberInterno = Double(input) {
           valid = true
                
            number = numberInterno
        } else {
            print("Entrada inválida")
        }
    }
    
    // soma
    soma = soma + number
} while number != 0

print("Soma = \(soma)")
