/*
 Faça um programa que, dado um número lido a partir do teclado, calcula a soma de seus dígitos
 (independentemente do número de dígitos)
 */

var number: String = ""

// ler e validar a entrada
var valid = false
while valid == false {
    if let input = readLine(), let _ = Int(input) {
        valid = true
        
        number = input
    } else {
        print("Entrada inválida")
    }
}

// converter cada caracter para inteiro e somar
var sum = 0
for digit in number.characters {
    let str = String(digit)
    if let digit = Int(str) {
        sum = sum + digit
    }
}

print("Soma = \(sum)")
