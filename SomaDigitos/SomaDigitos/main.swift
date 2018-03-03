/*
 Faça um programa que, dado um número lido a partir do teclado, calcula a soma de seus dígitos
 (independentemente do número de dígitos)
*/

var number = 0

var valid = false
while valid == false {
    if let input = readLine(), let numberInner = Int(input) {
        valid = true
        
        number = numberInner
    } else {
        print("Entrada inválida")
    }
}

var sum = 0
while number != 0 {
    sum = sum + number%10
    number = number/10
}

print("Soma = \(sum)")
