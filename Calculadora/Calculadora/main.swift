/*
 Faça uma calculadora de 4 operações que recebe o operador (+, -, * ou /) primeiro, os dois
 operandos depois, realiza a operação desejada e imprime o resultado.
*/

// lê operação
print("Digite a operação (+, -, * ou /)")

var operacao: Character = "a"
var valid = false
while valid == false {
    if let input = readLine() {
        operacao = Character(input)
        
        if (operacao == "+" || operacao == "-" || operacao == "*" || operacao == "/") {
            valid = true
        } else {
            print("Entrada inválida")
        }
    } else {
        print("Entrada inválida")
    }
}

// lê operandos
print("Digite os operandos")

var operandos = [0.0, 0.0]

for index in 0...1 {
    valid = false
    while valid == false {
        if let input = readLine(), let operando = Double(input) {
            valid = true
            
            operandos[index] = operando
        } else {
            print("Entrada inválida")
        }
    }
}

var error = false
if (operacao == "/" && operandos[1] == 0) {
    print("Erro - divisão por 0")
    error = true
}

if error == false {
    // calcula resultado
    var result: Double = -1.0
    switch operacao {
    case "+":
        result = operandos[0] + operandos[1]
    case "-":
        result = operandos[0] - operandos[1]
    case "*":
        result = operandos[0] * operandos[1]
    case "/":
        result = operandos[0] / operandos[1]
    default:
        print("Erro")
    }

    // imprime resultado
    print("Resultado = \(result)")
}
