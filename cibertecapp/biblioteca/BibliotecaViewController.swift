//
//  BibliotecaViewController.swift
//  cibertecapp
//
//  Created by DAMII on 23/11/24.
//

import UIKit

struct Biblioteca {
    let nombre: String
    let autor: String
    let descripcion: String
    let imagen: String
}

class BibliotecaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var bibliotecaTableView: UITableView!
    
    var bibliotecaList: [Biblioteca] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bibliotecaTableView.dataSource = self
        bibliotecaTableView.delegate = self
        
        bibliotecaList.append(Biblioteca(nombre: "Matar a un Ruiseñor", autor: "Harper Lee", descripcion: "En el número uno de la lista se encuentra el clásico de 1960 Matar a un ruiseñor, de Harper Lee, con más de 175.564 publicaciones en Instagram de la portada del libro. Con más de 40 millones de copias vendidas, no es de extrañar que este libro sea el primero. Desgarrador, conmovedor y apasionante, es un viaje que explora las raíces del comportamiento humano", imagen: "libro1.jpg"))
        bibliotecaList.append(Biblioteca(nombre: "Heredera de Fuego", autor: "Sarah J. Maas", descripcion: "Le sigue Heredera de fuego, Sarah J. Maas, con la friolera de 148.134 publicaciones. Este libro se publicó originalmente en 2014 y cuenta la historia de Celaena, quien, después de sobrevivir a varias situaciones mortales, debe viajar a una nueva tierra para enfrentar su verdad más oscura. Una ficción muy popular", imagen: "libro2.jpg"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bibliotecaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BibliotecaCell", for: indexPath) as! BibliotecaTableViewCell
        let biblioteca = bibliotecaList[indexPath.row]
        cell.nombreLabel.text = biblioteca.nombre
        cell.autorLabel.text = biblioteca.autor
        cell.descripcionLabel.text = biblioteca.descripcion
        cell.portadaImageView.image = UIImage(named: biblioteca.imagen)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let biblioteca = bibliotecaList[indexPath.row]
        goToDetail(biblioteca: biblioteca)
    }
    
    private func goToDetail(biblioteca:Biblioteca){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "bibliotecaDetalleView") as! BibliotecaDetalleViewController
        view.biblioteca = biblioteca
        self.navigationController?.pushViewController(view, animated: true)
        //present(view, animated: true)
    }
    
}
