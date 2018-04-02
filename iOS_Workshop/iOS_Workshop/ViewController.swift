//
//  ViewController.swift
//  iOS_Workshop
//
//  Created by Turma Manhã on 02/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var minhaLabel: UILabel!
    @IBOutlet weak var botao: UIButton!
    @IBOutlet weak var campoDeTexto: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        minhaLabel.text = " alguma coisa"
        minhaLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        
        botao.setTitle("Clique", for: UIControlState.normal)
        
        //botao.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControlEvents#>)
    }
    
    @IBAction func tap(_ sender: Any) {
        minhaLabel.text = " outra coisa"
        
        if let texto = campoDeTexto.text {
            minhaLabel.text = texto
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

