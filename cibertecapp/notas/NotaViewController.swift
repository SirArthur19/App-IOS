//
//  NotaViewController.swift
//  cibertecapp
//
//  Created by DAMII on 19/11/24.
//

import UIKit

struct Nota{
    var fecha: String
    var contenido: String
}

class NotaViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var notasTableView: UITableView!

    var notaList: [Nota] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Delegación - importante para que todo funciones
        notasTableView.dataSource = self
        
        notaList.append(Nota(fecha: "23/11/2024 - 15:30", contenido: "Ola k ace"))
        notaList.append(Nota(fecha: "23/11/2024 - 15:30", contenido: "Ola k ace"))
        notaList.append(Nota(fecha: "23/11/2024 - 15:30", contenido: "Ola k ace"))
        
    }
    
    //Se le indica cuantos elementos por sección mostrará
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notaList.count
    }
    
    //Se ejecutará las veces que se indique la cantidad de los elementos
    //Tantas veces se ejecutará como elementos tenga
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Indica que prototipo usará
        let cell = tableView.dequeueReusableCell(withIdentifier: "notaCell", for: indexPath) as! NotaTableViewCell
        //Asigna los datos
        let nota = notaList[indexPath.row]
        cell.fechaLabel.text = nota.fecha
        cell.contenidoLabel.text = nota.contenido
        return cell
    }
    

}
