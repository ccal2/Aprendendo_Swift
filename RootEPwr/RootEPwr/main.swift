/*
 Escreva um programa que pede que o usuário forneça um número inteiro Y e que imprime um par de
 inteiros, root e pwr, tais que 0 < pwr < 6 e root**pwr é igual a Y. Se esse par não existir, seu
 programa deve informar isso ao usuário.
*/

var number = 0

var valid = false
while !valid {
    if let input = readLine(), let innerNumber = Int(input) {
        valid = true
        
        number = innerNumber
    }
}

