//
//  Pergunta.swift
//  Trivia
//
//  Created by Turma Manhã on 02/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

class Pergunta {
    var enunciado: String
    var resposta: String
    var elogio: String
    var xingamento: String
    
    init (enunciado: String, resposta: String, elogio: String = "parabéns!", xingamento: String = "errou!") {
        self.enunciado = enunciado
        self.resposta = resposta
        self.elogio = elogio
        self.xingamento = xingamento
    }
}
