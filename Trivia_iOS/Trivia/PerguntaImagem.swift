//
//  PerguntaImagem.swift
//  Trivia
//
//  Created by Turma Manhã on 03/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import UIKit

class PerguntaImagem: Pergunta {
    let nomeImagem: String
    
    init (enunciado: String, resposta: String, elogio: String = "parabéns!", xingamento: String = "errou!", dica: String = "", nomeImagem: String = "") {
        self.nomeImagem = nomeImagem
        
        super.init(enunciado: enunciado, resposta: resposta, elogio: elogio, xingamento: xingamento, dica: dica)
    }
}
