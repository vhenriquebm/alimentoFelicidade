//
//  ViewController.swift
//  alimentoFelicidade
//
//  Created by Vitor Henrique Barreiro Marinho on 05/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var campoAlimento: UITextField!
    
    
    @IBOutlet weak var campoFelicidade: UITextField!
    
    
    
    
    @IBAction func registrar(_ sender: Any) {
        
        var nome = campoAlimento.text
        var felicidade = campoFelicidade.text
     
        
        print ( "Comi \(nome) e fiquei com felicidade \(felicidade)")
        
        
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

