//
//  NotaTableViewCell.swift
//  cibertecapp
//
//  Created by DAMII on 19/11/24.
//

import UIKit

class NotaTableViewCell: UITableViewCell {

    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var contenidoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
