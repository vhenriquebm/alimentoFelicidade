import UIKit


class ViewController:UIViewController {
    
    var tableViewController: TableViewController?
    

    @IBOutlet var nomeTextField: UITextField?
    
    
    @IBOutlet var felicidadeTextField: UITextField?
    
    
    @IBAction func adicionar ( sender: Any) {
        
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return}
        
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        
        tableViewController?.add(refeicao)

        navigationController?.popViewController(animated: true)
        
    }
    
}
