/*
 Crie um programa que lê uma sequência de números do teclado, armazenando-os em um  array. Quando o
 usuário digitar <ENTER> sem nenhum número, seu programa deve calcular a média de todos os números
 armazenados e imprimir esse valor.
*/

var array: [Double] = []

var valid = false
while !valid {
    if let input = readLine() {
        if let number = Double(input) {
            array.append(number)
        } else if input == "" { // ENTER?
            valid = true
        } else {
            print("Entrada inválida")
        }
    } else {
        print("Entrada inválida")
    }
}

var sum = 0.0
if array.count > 0 {
    for i in 0...array.count-1 {
        sum = sum + array[i]
    }
    
    print("media = \(sum/Double(array.count))")
}
