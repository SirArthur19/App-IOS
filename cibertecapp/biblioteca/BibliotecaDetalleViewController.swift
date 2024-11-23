//
//  BibliotecaDetalleViewController.swift
//  cibertecapp
//
//  Created by DAMII on 23/11/24.
//

import UIKit

class BibliotecaDetalleViewController: UIViewController {

    @IBOutlet weak var nombreLibroLabel: UILabel!
    @IBOutlet weak var autorLibroLabel: UILabel!
    @IBOutlet weak var descripcionLibroLabel: UILabel!
    @IBOutlet weak var portadaLibroImageView: UIImageView!
    var biblioteca: Biblioteca?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let libro = biblioteca{
            title = "Detalle Libro"
            nombreLibroLabel.text = libro.nombre
            autorLibroLabel.text = libro.autor
            descripcionLibroLabel.text = libro.descripcion
            portadaLibroImageView.image = UIImage(named: libro.imagen)
        }
    }
    
    
    @IBAction func agregar(_ sender: Any) {
        alertBasic()
    }
    
}

extension BibliotecaDetalleViewController{
    func alertBasic(){
        let alert = UIAlertController(title: "Biblioteca", message: "Se agregó el producto en tu carrito", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Aceptar", style: .default)
        alert.addAction(action)
        
        self.present(alert, animated: true)
        
    }
}
