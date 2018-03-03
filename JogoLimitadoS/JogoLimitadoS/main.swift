/*
 Construa uma variante do jogo de adivinhar o número que funciona da seguinte maneira. O número inteiro
 a ser adivinhado N pode estar entre 1 e 200. Palpites podem ter apenas três valores: 1, 10 e 100 (o
 jogo não deve aceitar valores diferentes). Além disso, o jogo mantém uma variável S inicialmente igual
 a 0. Quando o segundo jogador fornece um palpite, um dos dois cenários ocorre:
 
     (1) S é menor que o número a ser adivinhado e o novo S é o resultado de somar o novo palpite ao S
 antigo
     (2) S é maior que o número a ser adivinhado e o novo S é o resultado de subtrair o novo palpite do
 S antigo
 
 Se, após essas operações, o valor de S for igual ao número a ser adivinhado, o jogo acaba. Caso
 contrário, prossegue conforme as mesmas regras. O jogo deve contar o número de palpites que foram
 necessários para acertar e imprimir esse número no final.
 */

// lê e valida o número do jogador 1
print("Jogador 1: ", terminator:"")
var number1: Int = -1

var valid = false
while valid == false {
    if let input = readLine(), let number = Int(input) {
        number1 = number
        
        if (number1 < 1 || number1 > 200) {
            print("O número deve ser entre 1 e 200")
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
var S = 0
var number2: Int = -1
var palpites = 0
var win = false
print("Jogador2: ", terminator:"")

var i = 0
while (win == false) {
    // lê e valida as tentativas do jogador 2
    valid = false
    while valid == false {
        if let input = readLine(), let number = Int(input) {
            number2 = number
            
            if !(number2 == 1 || number2 == 10 || number2 == 100) {
                print("O número deve ser 1, 10 ou 100")
            } else {
                valid = true
            }
        } else {
            print("Entrada inválida")
        }
    }
    
    // verifica se o jogador acertou. Se não, calcula novo S
    if S == number1 {
        win = true
    } else  {
        if S < number1 {
            S = S + number2
        } else {
            S = S - number2
        }
        
        palpites = palpites + 1
        
        print("S = \(S)")
    }
    
    i = i + 1
}

print("\npalpites = \(palpites)")
