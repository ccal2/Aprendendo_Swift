/*
 Faça um programa que lê três números a partir do teclado e imprime os três em ordem crescente.
*/

let size = 3    // se mudar, mundar vvvv também!
var number = [0, 0, 0]

// leitura dos números
for index in 0...size-1 {
    var valid = false
    
    while valid == false {
        if let input = readLine(), let numberInterno = Int(input) {
            valid = true
                
            number[index] = numberInterno
        } else {
            print("Entrada inválida")
        }
    }
}

//print(number)

// ordenar vetor
var menor: Int
for index in 0...size-2 {
    menor = index
    
    for index2 in index+1...size-1 {
        if number[index2] < number[menor] {
            let temp = number[menor]
            number[menor] = number[index2]
            number[index2] = temp
            menor = index
        }
    }
}

print(number)
