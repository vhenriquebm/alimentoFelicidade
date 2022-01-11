//
//  Item.swift
//  alimentoFelicidade
//
//  Created by Vitor Henrique Barreiro Marinho on 11/01/22.
//

import UIKit

class Item: NSObject {
    
    //Mark - Atributos
    let nome: String
    let calorias: Double
    
    //Mark - Init
    init(nome: String, calorias: Double ) {
        self.nome = nome
        self.calorias = calorias
        
    }

}
