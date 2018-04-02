//
//  ViewController.swift
//  Trivia
//
//  Created by Turma Manhã on 02/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

let qntPerguntas = 4

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enunciado: UILabel!
    @IBOutlet weak var palpite: UITextField!
    @IBOutlet weak var verifica: UIButton!
    @IBOutlet weak var comentario: UILabel!
    @IBOutlet weak var proxima: UIButton!
    
    var perguntas: [Pergunta] = [Pergunta(enunciado: "Qual a capital da Croácia?", resposta: "Zagreb", elogio: "Tu é fera!", xingamento: "Vai ter que voltar pra escola!"), Pergunta(enunciado: "Em que ano Swift 1.0 tornou-se disponível?", resposta: "2014", elogio: "Parabéns!", xingamento: "Que besta! Errasse isso?"), Pergunta(enunciado: "Qual o nome do segundo álbum do Vampire Weekend?", resposta: "Contra", elogio: "Isso aí!", xingamento: "Tá mal, hein?"), Pergunta(enunciado: "Qual o nome do vocalista de Arctic Monkeys?", resposta: "Alex Turner", elogio: "Isso mesmo!", xingamento: "Errou!!")]
    var indice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        enunciado.text = perguntas[self.indice].enunciado
    }
    
    @IBAction func verifica(_ sender: Any) {
        if let texto = palpite.text {
            if texto == perguntas[self.indice].resposta {
                comentario.text = perguntas[self.indice].elogio
                self.proximaPergunta()
            } else {
                comentario.text = perguntas[self.indice].xingamento
            }
        }
    }
    
    func proximaPergunta () {
        if self.indice != qntPerguntas-1 {
            self.indice += 1
            enunciado.text = perguntas[self.indice].enunciado
            palpite.text = ""
            comentario.text = ""
        } else {
            comentario.text = "As perguntas acabaram"
        }
    }
    
    @IBAction func proximaPergunta(_ sender: Any) {
//        self.indice += 1
//
//        if self.indice == qntPerguntas-1 {
//            enunciado.text = perguntas[self.indice].enunciado
//            palpite.text = ""
//            comentario.text = ""
//        } else {
//            comentario.text = "As perguntas acabaram"
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

