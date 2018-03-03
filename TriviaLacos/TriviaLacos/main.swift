let qntPerguntas = 4

// perguntas e respostas
var perguntas = ["Qual a capital da Croácia?", "Em que ano Swift 1.0 tornou-se disponível?", "Qual o nome do segundo álbum do Vampire Weekend?", "Qual o nome do vocalista de Arctic Monkeys?"]
var respostas = ["Zagreb", "2014", "Contra", "Alex Turner"]

// elogios e xingamentos
var elogios = ["Tu é fera!", "Parabéns!", "Isso aí!", "Isso mesmo!"]
var xingamentos = ["Vai ter que voltar pra escola!", "Que besta! Errasse isso?", "Tá mal, hein?", "Errou!!"]

var pontos = 0

// mostra as perguntas, lê as respostas e computa os pontos
for i in 0...qntPerguntas-1 {
    print(perguntas[i])
    
    let palpite = readLine()
    if palpite == respostas[i] {
        print(elogios[i])
        pontos = pontos + 1
    } else {
        print(xingamentos[i])
        pontos = pontos - 1
    }
}

print("\nPontos = \(pontos)")
if (pontos == qntPerguntas) {
    print("Parabens! Voce acertou todos!")
}

