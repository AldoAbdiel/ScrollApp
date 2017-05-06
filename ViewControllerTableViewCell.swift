//
//  ViewControllerTableViewCell.swift
//  ScrollApp
//
//  Created by Aldo Abdiel Rodríguez Chávez on 4/6/17.
//  Copyright © 2017 Aldo Abdiel Rodríguez Chávez. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    var counter = 0
    
    @IBOutlet weak var heartIcon: UIButton! // likes
    @IBOutlet weak var likesCount: UILabel! // likes counter
    @IBOutlet weak var myLabel: UILabel! // title label
    @IBOutlet weak var myImage: UIImageView! // image
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
    
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("ENTRO!!!!!!!!")
        if (segue.identifier == "titlePost") {
            // pass data to next view
            print("PASAMOS LA INFOR VATOS")
            if let reference = segue.destination as? PopUpViewController {
                reference.desiredLabelValue = self.myLabel
            }
        }
    }
}
