//
//  ViewControllerTableViewCell.swift
//  ScrollApp
//
//  Created by Cesar Mauricio Cavazos Rodriguez on 4/6/17.
//  Copyright © 2017 Cesar Mauricio Cavazos Rodriguez. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
