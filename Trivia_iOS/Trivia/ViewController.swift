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
    @IBOutlet weak var switchDica: UISwitch!
    @IBOutlet weak var dica: UILabel!
    @IBOutlet weak var stepperPergunta: UIStepper!
    @IBOutlet weak var tamanhoFonte: UISlider!
    @IBOutlet weak var perguntaLabel: UILabel!
    @IBOutlet weak var dicaLabel: UILabel!
    @IBOutlet weak var tamanhoFonteLabel: UILabel!
    
    let perguntas: [Pergunta] = [Pergunta(enunciado: "Qual a capital da Croácia?", resposta: "Zagreb", elogio: "Tu é fera!", xingamento: "Vai ter que voltar pra escola!", dica: "Z_____"), Pergunta(enunciado: "Em que ano Swift 1.0 tornou-se disponível?", resposta: "2014", elogio: "Parabéns!", xingamento: "Que besta! Errasse isso?", dica: "Teve copa"), Pergunta(enunciado: "Qual o nome do segundo álbum do Vampire Weekend?", resposta: "Contra", elogio: "Isso aí!", xingamento: "Tá mal, hein?", dica: "?"), Pergunta(enunciado: "Qual o nome do vocalista de Arctic Monkeys?", resposta: "Alex Turner", elogio: "Isso mesmo!", xingamento: "Errou!!", dica: "?")]
    var indice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        enunciado.text = perguntas[self.indice].enunciado
        
        switchDica.isOn = false
        
        stepperPergunta.minimumValue = 1
        stepperPergunta.maximumValue = Double(qntPerguntas)
        
        perguntaLabel.text = "Pergunta \(Int(stepperPergunta.value))/\(qntPerguntas)"
        
        tamanhoFonte.minimumValue = 12
        tamanhoFonte.maximumValue = 30
        tamanhoFonte.value = 17
    }
    
    @IBAction func verifica(_ sender: Any) {
        if let texto = palpite.text {
            if texto == perguntas[self.indice].resposta {
                comentario.text = perguntas[self.indice].elogio
            } else {
                comentario.text = perguntas[self.indice].xingamento
            }
        }
    }
    
    @IBAction func mudaPergunta(_ sender: Any) {
        self.indice = Int(stepperPergunta.value - 1)
        enunciado.text = perguntas[self.indice].enunciado
        palpite.text = ""
        comentario.text = ""
        switchDica.isOn = false
        dica.text = ""
        perguntaLabel.text = "Pergunta \(Int(stepperPergunta.value))/\(qntPerguntas)"
    }
    
    @IBAction func mostraDica(_ sender: Any) {
        if switchDica.isOn {
            dica.text = perguntas[self.indice].dica
        } else {
            dica.text = ""
        }
    }
    
    @IBAction func mudaTamanhoFonte(_ sender: Any) {
        enunciado.font = enunciado.font.withSize(CGFloat(tamanhoFonte.value))
        palpite.font = palpite.font?.withSize(CGFloat(tamanhoFonte.value))
        comentario.font = comentario.font.withSize(CGFloat(tamanhoFonte.value))
        dica.font = dica.font.withSize(CGFloat(tamanhoFonte.value))
        perguntaLabel.font = perguntaLabel.font.withSize(CGFloat(tamanhoFonte.value))
        dicaLabel.font = dicaLabel.font.withSize(CGFloat(tamanhoFonte.value))
        tamanhoFonteLabel.font = tamanhoFonteLabel.font.withSize(CGFloat(tamanhoFonte.value))
        verifica.titleLabel?.font = verifica.titleLabel?.font.withSize(CGFloat(tamanhoFonte.value))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

