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
        notasTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notaCell", for: indexPath) as! NotaTableViewCell
        let nota = notaList[indexPath.row]
        cell.fechaLabel.text = nota.fecha
        cell.contenidoLabel.text = nota.contenido
        return cell
    }
    

}
