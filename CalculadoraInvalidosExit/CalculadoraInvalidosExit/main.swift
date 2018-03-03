/*
 Modifique sua calculadora para que o programa termine caso um operador ou operando inválido
 seja fornecido. Forneça também uma mensagem de erro para o usuário. 
*/

import Darwin // exit()

// lê operação
print("Digite a operação (+, -, * ou /)")

var operacao: Character = "a"

if let input = readLine() {
    operacao = Character(input)
    
    if !(operacao == "+" || operacao == "-" || operacao == "*" || operacao == "/") {
        print("Entrada inválida")
        exit(0)
    }
} else {
    print("Entrada inválida")
    exit(0)
}


// lê operandos
print("Digite os operandos")

var operandos = [0.0, 0.0]

for index in 0...1 {
    let inputOp = readLine()
    
    if let input = inputOp, let operando = Double(input) {
        operandos[index] = operando
    } else {
        print("Entrada inválida")
        exit(0)
    }
}

if (operacao == "/" && operandos[1] == 0) {
    print("Erro - divisão por 0")
    exit(0)
}

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
