//
//  main.swift
//  Trivia
//
//  Created by Turma Manhã on 2/21/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

// Várias perguntas
let pergunta1 = "Qual a capital da Croácia?"
let resposta1 = "Zagreb"

let pergunta2 = "Em que ano Swift 1.0 tornou-se disponível?"
let resposta2 = "2014"

let pergunta3 = "Qual o nome do segundo álbum do Vampire Weekend?"
let resposta3 = "Contra"

let pergunta4 = "Qual o nome do vocalista de Arctic Monkeys?"
let resposta4 = "Alex Turner"

let pergunta5 = "Qual desses países não faz parte do Reino Unido?\n a) País de Gales\n b) Irlanda do Norte\n c) República da Irlanda\n d) Escócia"
let resposta5m = "c"
let resposta5M = "C"

var pontos = 0

// Mostrando as perguntas e esperando as respostas:
print(pergunta1)
var palpite = readLine()
if (palpite == resposta1) {
    print("Tu é fera!")
    pontos = pontos + 1
} else {
    print("Vai ter que voltar pra escola!")
    pontos = pontos - 1
}

print(pergunta2)
palpite = readLine()
if (palpite == resposta2) {
    print("Parabéns!")
    pontos = pontos + 1
} else {
    print("Que besta! Errasse isso?")
    pontos = pontos - 1
}

print(pergunta3)
palpite = readLine()
if (palpite == resposta3) {
    print("Isso aí!")
    pontos = pontos + 1
} else {
    print("Tá mal, hein?")
    pontos = pontos - 1
}

print(pergunta4)
palpite = readLine()
if (palpite == resposta4) {
    print("Isso mesmo!")
    pontos = pontos + 1
} else {
    print("Errou!!")
    pontos  = pontos - 1
}

print(pergunta5)
palpite = readLine()
if (palpite == resposta5m || palpite == resposta5M) {
    print("Tá sabendo!")
    pontos = pontos + 1
} else {
    print("Nope :/")
    pontos = pontos - 1
}

print("\nPontos = \(pontos)")
if (pontos == 5) {
    print("Parabens! Voce acertou todos!")
}

