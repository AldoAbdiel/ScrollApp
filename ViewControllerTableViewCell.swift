//
//  ViewControllerTableViewCell.swift
//  ScrollApp
//
//  Created by Aldo Abdiel Rodríguez Chávez on 4/6/17.
//  Copyright © 2017 Cesar Mauricio Cavazos Rodriguez. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    var counter = 0
    
    @IBOutlet weak var heartIcon: UIButton!
    @IBOutlet weak var likesCount: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func heartPressed(_ sender: UIButton) {
        print("like event")
        counter += 1
        likesCount.text = String(counter)
        heartIcon.tintColor = UIColor.red
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
