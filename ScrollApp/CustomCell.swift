//
//  CustomCell.swift
//  ScrollApp
//
//  Created by Cesar Mauricio Cavazos Rodriguez on 4/2/17.
//  Copyright © 2017 Cesar Mauricio Cavazos Rodriguez. All rights reserved.
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
