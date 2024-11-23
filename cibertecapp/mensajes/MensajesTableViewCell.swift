//
//  MensajesTableViewCell.swift
//  cibertecapp
//
//  Created by DAMII on 23/11/24.
//

import UIKit

class MensajesTableViewCell: UITableViewCell {

    @IBOutlet weak var perfilImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var horaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        perfilImageView.clipsToBounds = true
        perfilImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        perfilImageView.layer.cornerRadius = perfilImageView.frame.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
