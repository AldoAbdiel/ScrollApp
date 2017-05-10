//
//  CustomCell.swift
//  ScrollApp
//
//  Created by Aldo Abdiel Rodríguez Chávez on 3/29/17.
//  Copyright © 2017 Aldo Abdiel Rodríguez Chávez. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var photo: UIImageView!
    @IBOutlet var tittle: UILabel!
    @IBOutlet var myDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
