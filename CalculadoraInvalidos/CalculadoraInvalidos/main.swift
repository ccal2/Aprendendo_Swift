/*
 Modifique sua calculadora para que o programa termine caso um operador ou operando inválido
 seja fornecido. Forneça também uma mensagem de erro para o usuário. 
*/


// lê operação
print("Digite a operação (+, -, * ou /)")

var operacao: Character = "a" // "a" - só pra inicializar a variável
var valid = true

if let input = readLine() {
    operacao = Character(input)
    
    if !(operacao == "+" || operacao == "-" || operacao == "*" || operacao == "/") {
        valid = false
        print("Entrada inválida")
    }
} else {
    valid = false
    print("Entrada inválida")
}

if valid == true {
    // lê operandos
    print("Digite os operandos")
    
    var operandos = [0.0, 0.0]
    
    for index in 0...1 {
        if valid == true {
            if let input = readLine(), let operando = Double(input) {
                operandos[index] = operando
            } else {
                valid = false
                print("Entrada inválida")
            }
        }
    }
    
    if valid == true {
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
    }
}
