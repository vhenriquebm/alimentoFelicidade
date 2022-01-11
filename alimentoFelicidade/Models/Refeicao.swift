//
//  Refeicao.swift
//  alimentoFelicidade
//
//  Created by Vitor Henrique Barreiro Marinho on 11/01/22.
//

import UIKit

class Refeicao: NSObject {
    
    
    // Mark: Atributos
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []
    
    
    //Mark - Init
    
    init (nome: String, felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
     
        
    }
    
    
    //Mark - Métodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
            
    
        }
        
        return total
    }
    

}





