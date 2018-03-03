/*
 Faça um programa que lê três números a partir do teclado e imprime os três em ordem crescente.
*/

let size = 3    // se mudar, mundar vvvv também!
var numbers = [0, 0, 0]

// leitura dos números
for index in 0...size-1 {
    var valid = false
    
    while valid == false {
        if let input = readLine(), let numberInterno = Int(input) {
            valid = true
            
            numbers[index] = numberInterno
        } else {
            print("Entrada inválida")
        }
    }
}

let menor = min(numbers[0], numbers[1], numbers[2])
let maior = max(numbers[0], numbers[1], numbers[2])

numbers = [menor, ((numbers[0] + numbers[1] + numbers[2]) - menor - maior), maior]

print(numbers)
