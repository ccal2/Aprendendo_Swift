//
//  Pergunta.swift
//  Trivia
//
//  Created by Turma Manhã on 02/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

class Pergunta {
    let enunciado: String
    let resposta: String
    let elogio: String
    let xingamento: String
    let dica: String
    
    init (enunciado: String, resposta: String, elogio: String = "parabéns!", xingamento: String = "errou!", dica: String) {
        self.enunciado = enunciado
        self.resposta = resposta
        self.elogio = elogio
        self.xingamento = xingamento
        self.dica = dica
    }
}
