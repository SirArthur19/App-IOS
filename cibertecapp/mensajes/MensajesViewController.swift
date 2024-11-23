//
//  MensajesViewController.swift
//  cibertecapp
//
//  Created by DAMII on 23/11/24.
//

import UIKit

struct Mensajes{
    let imagen: String
    let nombre: String
    let descripcion:String
    let hora:String
}

class MensajesViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var MensajesTableView: UITableView!
    
    var mensajesList: [Mensajes] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MensajesTableView.dataSource = self
        mensajesList.append(Mensajes(imagen: "contacto1.jpg", nombre: "José Lopez Vera", descripcion: "Ya estamos todos reunidos, empezaremos en 15 min", hora: "19:00"))
        mensajesList.append(Mensajes(imagen: "contacto3.jpg", nombre: "Diana Horna Valencia", descripcion: "Ya estamos todos reunidos, empezaremos en 15 min", hora: "19:00"))
        mensajesList.append(Mensajes(imagen: "contacto4.jpg", nombre: "Gloria Sandoval Lopez", descripcion: "Ya estamos todos reunidos, empezaremos en 15 min", hora: "19:00"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mensajesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mensajesCell", for: indexPath) as! MensajesTableViewCell
        let mensajes = mensajesList[indexPath.row]
        cell.nombreLabel.text = mensajes.nombre
        cell.descripcionLabel.text = mensajes.descripcion
        cell.horaLabel.text = mensajes.hora
        cell.perfilImageView.image = UIImage(named: mensajes.imagen)
        return cell
    }
    

}
