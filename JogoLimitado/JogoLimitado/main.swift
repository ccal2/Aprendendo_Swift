/*
 Faça com que seu programa só aceite números a ser adivinhados entre 0 e 100. Enquanto os
 números não estiverem nesse intervalo, seu jogo deve continuar repetidamente pedindo que o
 número a ser adivinhado seja fornecido.
*/

// lê e valida o número do jogador 1
print("Jogador 1: ", terminator:"")
var number1: Int = -1

var valid = false
while valid == false {
    if let input = readLine(), let number = Int(input) {
        number1 = number
        
        if (number1 < 0 || number1 > 100) {
            print("O número deve ser entre 0 e 100")
        } else {
            valid = true
        }
    } else {
        print("Entrada inválida")
    }
}

for _ in 1...10 { // <------    _ e não i (i não seria utilizada)s
    print() // pular linhas
}

// tentativas do jogador 2
var number2: Int = -1
var tentativas = 3
var win = false
print("Jogador2: (\(tentativas) tentativas)")

var i = 0
while (win == false && i < tentativas) {
    // lê e valida as tentativas do jogador 2
    print("tentativa \(i+1): ", terminator:"")
    
    valid = false
    while valid == false {
        if let input = readLine(), let number = Int(input) {
            number2 = number
            
            if (number2 < 0 || number2 > 100) {
                print("O número deve ser entre 0 e 100")
            } else {
                valid = true
            }
        } else {
            print("Entrada inválida")
        }
    }
    
    // verifica se o jogador acertou
    if number2 == number1 {
        win = true
    } else if i < tentativas-1 {
        if number2 > number1 {
            print("Tente um número menor")
        } else {
            print("Tente um número maior")
        }
    }
    i = i + 1
}

if win == true {
    print("Parabéns!")
} else {
    print("Game Over")
}
