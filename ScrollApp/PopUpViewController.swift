//
//  PopUpViewController.swift
//  
//
//  Created by Aldo Abdiel Rodriguez Chavez on 5/6/17.
//
//

import UIKit

class PopUpViewController: UIViewController {
 
    @IBOutlet weak var switchUI: UISwitch!
    @IBAction func nightModeSwitch(_ sender: UISwitch) {
        //let title = view.viewWithTag(10) as! UILabel
        
        if(sender.isOn == true){
            print("SWITCH ON")
            for var i in(0..<TableHelper.desiredCellValue.count).reversed(){
                TableHelper.desiredCellValue[i].backgroundColor = UIColor.black
                TableHelper.desiredTitleValue[i].textColor = UIColor.white
                TableHelper.desiredLikesValue[i].textColor = UIColor.white
                i+=1
            }
            TableHelper.switchState = true
        }else{
            print("SWITCH OFF")
            for var i in(0..<TableHelper.desiredCellValue.count).reversed(){
                TableHelper.desiredCellValue[i].backgroundColor = UIColor.white
                TableHelper.desiredTitleValue[i].textColor = UIColor.black
                TableHelper.desiredLikesValue[i].textColor = UIColor.black
                i+=1
            }
            TableHelper.switchState = false
        }
    }
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        if(TableHelper.switchState == true){
            switchUI.setOn(true, animated: false)
        }else{
            switchUI.setOn(false, animated: false)
            
        }
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.removAnimate()
        //self.view.removeFromSuperview()
    }
    
    func showAnimate(){
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removAnimate(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{ (finished: Bool) in
            if(finished){
                self.view.removeFromSuperview()
            }
        });
    }
}
