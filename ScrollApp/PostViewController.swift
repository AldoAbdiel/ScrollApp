//
//  PostViewController.swift
//  ScrollApp
//
//  Created by Cesar Mauricio Cavazos Rodriguez on 5/9/17.
//  Copyright © 2017 Cesar Mauricio Cavazos Rodriguez. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet var postView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    var recivedTitle = String()
    
    override func viewDidLoad() {
        print("entraste a POST VIEW CONTROLLER")
        titleLabel.text = recivedTitle
        myImage.image = UIImage(named: recivedTitle + ".jpg")
        if(TableHelper.switchState == true){
            titleLabel.textColor = UIColor.white
            postView.backgroundColor = UIColor.black
        }else{
            titleLabel.textColor = UIColor.black
            postView.backgroundColor = UIColor.white
        }
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
