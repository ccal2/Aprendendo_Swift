//
//  ViewController.swift
//  iOS_Workshop2
//
//  Created by Turma Manhã on 03/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tabela: UITableView!
    @IBOutlet weak var texto: UITextField!
    
    var itens = ["item 1", "item 2", "item 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabela.delegate = self
        tabela.dataSource = self
        
        texto.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itens[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: "celula")
        
        celula.textLabel?.text = itens[indexPath.row]
        
        return celula
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        itens.append(textField.text!)
        tabela.reloadData()
        
        textField.text = ""
        textField.resignFirstResponder()
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

