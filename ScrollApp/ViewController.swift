//
//  ViewController.swift
//  ScrollApp
//
//  Created by Aldo Abdiel Rodríguez Chávez on 3/29/17.
//  Copyright © 2017 Cesar Mauricio Cavazos Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableData: UITableView!
    
    let dogs = ["dog-1", "dog-2", "dog-3", "dog-1", "dog-2", "dog-3"]
    let fun = ["fun-1", "fun-2", "fun-3", "fun-4", "fun-5"]
    //var data

    @IBAction func changeSection(_ sender: UIButton) {
        
        let home = view.viewWithTag(1) as! UIButton
        let fun = view.viewWithTag(2) as! UIButton
        let other = view.viewWithTag(3) as! UIButton
        let settings = view.viewWithTag(4) as! UIButton
        
        switch sender.tag {
        case 1:
            home.titleLabel?.textColor = UIColor.white
            fun.titleLabel?.textColor = UIColor.gray
            other.titleLabel?.textColor = UIColor.gray
            settings.titleLabel?.textColor = UIColor.gray
            print("home clic")
        case 2:
            home.titleLabel?.textColor = UIColor.gray
            fun.titleLabel?.textColor = UIColor.white
            other.titleLabel?.textColor = UIColor.gray
            settings.titleLabel?.textColor = UIColor.gray
               
            refresh()
            print("fun clic")
            
        case 3:
            home.titleLabel?.textColor = UIColor.gray
            fun.titleLabel?.textColor = UIColor.gray
            other.titleLabel?.textColor = UIColor.white
            settings.titleLabel?.textColor = UIColor.gray
            print("other clic")
        case 4:
            home.titleLabel?.textColor = UIColor.gray
            fun.titleLabel?.textColor = UIColor.gray
            other.titleLabel?.textColor = UIColor.gray
            settings.titleLabel?.textColor = UIColor.white
            print("settings clic")
            
        default:
            print("default output")
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (dogs.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (dogs[indexPath.row] + ".jpg"))
        cell.myLabel.text = dogs[indexPath.row]
        return (cell)
    }
    
    func refresh(){
        self.tableData.reloadData()
    }
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
 
