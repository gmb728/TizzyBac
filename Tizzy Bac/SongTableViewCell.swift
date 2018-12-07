//
//  SongTableViewCell.swift
//  
//
//  Created by Chang Sophia on 12/7/18.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    
    @IBOutlet var songImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
