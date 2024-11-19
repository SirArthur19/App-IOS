//
//  LoginViewController.swift
//  cibertecapp
//
//  Created by DAMII on 16/11/24.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var correoTextField: UITextField!
    
    @IBOutlet weak var contrasenaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func login(_ sender: Any) {
        let correo = correoTextField.text!
        let contrasena = contrasenaTextField.text!
        
        if correo == "usuario@gmail.com" && contrasena == "todasmienten"{
            goToMenu()
        }else{
            alertBasic()
        }

    }
    
    private func goToMenu(){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "MenuView") as! MenuTabBarController
        view.modalPresentationStyle = .fullScreen
        self.present(view, animated: true)
    }
    
}

// Alertas
extension LoginViewController{
    func alertBasic(){
        let alert = UIAlertController(title: "Alerta", message: "Verifica Animal", preferredStyle: .alert)
        //let alert = UIAlertController(title: "Alerta", message: "Verifica Animal", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default)
        //let action = UIAlertAction(title: "Cancelar", style: .cancel)
        //let action = UIAlertAction(title: "Nell", style: .destructive)
        alert.addAction(action)
        
        let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel)
        alert.addAction(actionCancel)
        
        let actionNell = UIAlertAction(title: "Nell", style: .destructive)
        alert.addAction(actionNell)
        
        self.present(alert, animated: true)
        
    }
}
