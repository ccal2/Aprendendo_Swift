/*
 Defina um struct Pergunta para perguntas no seu jogo de Trivia. Que campos ele tem? Em seguida,
 modifique seu jogo para que ele passe a guardar todas as perguntas (e respostas correspondentes) em um
 array de Perguntas.
*/

struct Pergunta {
    var enunciado: String
    var resposta: String
    var elogio: String
    var xingamento: String
}

/*
var perg1 = Pergunta(enunciado: "Qual a capital da Croácia?", resposta: "Zagreb", elogio: "Tu é fera!", xingamento: "Vai ter que voltar pra escola!")
var perg2 = Pergunta(enunciado: "Em que ano Swift 1.0 tornou-se disponível?", resposta: "2014", elogio: "Parabéns!", xingamento: "Que besta! Errasse isso?")
var perg3 = Pergunta(enunciado: "Qual o nome do segundo álbum do Vampire Weekend?", resposta: "Contra", elogio: "Isso aí!", xingamento: "Tá mal, hein?")
var perg4 = Pergunta(enunciado: "Qual o nome do vocalista de Arctic Monkeys?", resposta: "Alex Turner", elogio: "Isso mesmo!", xingamento: "Errou!!")

 var perguntas: [Pergunta] = [perg1, perg2, perg3, perg4]
*/

var perguntas: [Pergunta] = [Pergunta(enunciado: "Qual a capital da Croácia?", resposta: "Zagreb", elogio: "Tu é fera!", xingamento: "Vai ter que voltar pra escola!"), Pergunta(enunciado: "Em que ano Swift 1.0 tornou-se disponível?", resposta: "2014", elogio: "Parabéns!", xingamento: "Que besta! Errasse isso?"), Pergunta(enunciado: "Qual o nome do segundo álbum do Vampire Weekend?", resposta: "Contra", elogio: "Isso aí!", xingamento: "Tá mal, hein?"), Pergunta(enunciado: "Qual o nome do vocalista de Arctic Monkeys?", resposta: "Alex Turner", elogio: "Isso mesmo!", xingamento: "Errou!!")]

var pontos = 0

// mostra as perguntas, lê as respostas e computa os pontos
for pergunta in perguntas {
    print(pergunta.enunciado)
    
    let palpite = readLine()
    if palpite == pergunta.resposta {
        print(pergunta.elogio)
        pontos = pontos + 1
    } else {
        print(pergunta.xingamento)
        pontos = pontos - 1
    }
}

print("\nPontos = \(pontos)")
if (pontos == perguntas.count) {
    print("Parabens! Voce acertou todos!")
}
