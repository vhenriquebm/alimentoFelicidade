//
//  TableViewController.swift
//  alimentoFelicidade
//
//  Created by Vitor Henrique Barreiro Marinho on 11/01/22.
//
import UIKit


class TableViewController: UITableViewController  {
    
    
    var refeicoes = [Refeicao(nome: "Macarrão", felicidade: 4),
                    
                        Refeicao(nome: "Pizza", felicidade: 4),
                     
                     
                        Refeicao(nome: "Comida Japonesa", felicidade: 5)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
print ( "TableViewController foi carregado")

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes [indexPath.row]
        celula.textLabel?.text = refeicao.nome
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(mostrarDetalhes(_:)))
        celula.addGestureRecognizer(longPress)
    
        
        celula.addGestureRecognizer(longPress)
    
        return celula
    }
    
    
    func add(_ refeicao: Refeicao) {
        print("Método add: \(refeicao.nome)")
            refeicoes.append(refeicao)
            tableView.reloadData()


        }

    
    @objc func mostrarDetalhes(_ gesture: UILongPressGestureRecognizer) {
        
        if gesture.state == .began {
        print ( " Gesture funcionando")
            let celula = gesture.view as! UITableViewCell
            
           guard let indexPath = tableView.indexPath(for: celula)  else {
                
                return
                
            }
            
            let refeicao = refeicoes[indexPath.row
            ]
        
            let alerta = UIAlertController(title: refeicao.nome, message: "Felicidade \(refeicao.felicidade)", preferredStyle: .alert)
            
            let botaoCancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
            
    
        
            alerta.addAction(botaoCancelar)
            
            
            
            present(alerta, animated: true) {
            
        }
        
    }
    
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let viewController = segue.destination as? ViewController {
            viewController.tableViewController = self
            
        }
        
    }
    
}




