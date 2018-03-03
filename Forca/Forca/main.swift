/*
 Construa um jogo de forca em Swift
*/

// lê e valida a entrada
print("Palavra secreta: ", terminator: "")

var word = ""
var valid = false

while !valid {
    if let input = readLine() {
        valid = true
        
        word = input
    } else {
        print("Entrada inválida")
    }
}

// transforma a string em arrays de caracteres
let wordArray = Array(word.characters)
let wordArrayLow = Array(word.lowercased().characters)

// cria um array pra guardar o estado atual do jogo
var wordNow: [Character] = []

// inicializa wordNow
for _ in 0...wordArray.count-1 {
    wordNow.append("_")
}

// jogo
var over = false
var win = true
var notIn: [Character] = []
var palpite:Character = "a"
var found: Bool
var body = ["cabeça", "tronco", "braços", "pernas"]
var enforcado = 0

while !over {
    // pula linhas
    for _ in 1...20 {
        print() // \n
    }
    
    // mostra o estado atual do jogo
    for char in wordNow {
        print(char, terminator: " ")
    }
    
    // mostra partes "enforcadas"
    if enforcado > 0 {
        print("\n\nEnforcado:")
        print(body[0...enforcado-1])
    }
    
    // imprime palpites errados
    if notIn.count > 0 {
        print("\npalpites errados:")
        print(notIn)
    }

    // lê e valida palpite
    print("\n\npalpite: ", terminator: "")
    
    valid = false
    while !valid {
        if let input = readLine() {
            if input.count == 1 {
                valid = true
                
                palpite = Character(input.lowercased())
            } else {
                print("Entrada inválida")
            }
        } else {
            print("Entrada inválida")
        }
    }
    print() // \n
    
    found = false
    for i in 0...wordArray.count-1 {
        if palpite == wordArrayLow[i] {
            found = true
            
            wordNow[i] = wordArray[i]
        }
    }
    
    if !found {
        notIn.append(palpite)
        
        enforcado = enforcado + 1
        
        if enforcado == body.count {
            over = true
            win = false
        }
    }
    
    if wordNow == wordArray {
        over = true
        win = true
    }
}

// imprime o jogo uma última vez
// pula linhas
for _ in 1...20 {
    print() // \n
}

// mostra o estado atual do jogo
for char in wordNow {
    print(char, terminator: " ")
}

// mostra partes "enforcadas"
if enforcado > 0 {
    print("\n\nEnforcado:")
    print(body[0...enforcado-1])
}

// imprime palpites errados
if notIn.count > 0 {
    print("\npalpites errados:")
    print(notIn)
}

if win {
    print("\nParabéns!")
} else {
    print("\nGame Over!")
}
