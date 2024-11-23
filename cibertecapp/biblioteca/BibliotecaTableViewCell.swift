//
//  BibliotecaTableViewCell.swift
//  cibertecapp
//
//  Created by DAMII on 23/11/24.
//

import UIKit

class BibliotecaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var autorLabel: UILabel!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var portadaImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
