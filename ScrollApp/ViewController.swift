//
//  ViewController.swift
//  ScrollApp
//
//  Created by Aldo Abdiel Rodríguez Chávez on 3/29/17.
//  Copyright © 2017 Aldo Abdiel Rodríguez Chávez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var cell: UIView!
    @IBOutlet weak var tableData: UITableView!
    @IBOutlet weak var labelTitle: UILabel!
    
    
    let dogsData = ["dog-1", "dog-2", "dog-3", "dog-4", "dog-5"]
    let funData = ["fun-1", "fun-2", "fun-3", "fun-4", "fun-5"]
    let otherData = ["other-1", "other-2", "other-3", "other-4", "other-5"]
  
    var check = false
    var myData = [String]()
    var myInformation: String!
    
    var myCell: UIView!
    
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
            refresh(tdata: self.dogsData)
            print("home clic")
        case 2:
            home.titleLabel?.textColor = UIColor.gray
            fun.titleLabel?.textColor = UIColor.white
            other.titleLabel?.textColor = UIColor.gray
            settings.titleLabel?.textColor = UIColor.gray
            refresh(tdata: self.funData)
            print("fun clic")
            
        case 3:
            home.titleLabel?.textColor = UIColor.gray
            fun.titleLabel?.textColor = UIColor.gray
            other.titleLabel?.textColor = UIColor.white
            settings.titleLabel?.textColor = UIColor.gray
            refresh(tdata: self.otherData)
            print("other clic")
        case 4:
            //home.titleLabel?.textColor = UIColor.gray
            //fun.titleLabel?.textColor = UIColor.gray
            //sother.titleLabel?.textColor = UIColor.gray
            settings.titleLabel?.textColor = UIColor.white
            print("settings clic")
            
            let popOverVC = UIStoryboard(name: "Main", bundle:
                nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
            
        default:
            print("default output")
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (self.myData.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        cell.myImage.image = UIImage(named: (self.myData[indexPath.row] + ".jpg"))
        cell.myLabel.text = myData[indexPath.row]
        TableHelper.desiredCellValue.append(cell.myCell)
        TableHelper.desiredTitleValue.append(cell.myLabel)
        TableHelper.desiredLikesValue.append(cell.likesCount)
        return (cell)
    }
    
    func refresh(tdata:[String]){
        self.check = true
        self.myData = tdata
        print("entra a refresh")
        DispatchQueue.main.async {
            self.tableData.reloadData()
        }
    }
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        TableHelper.switchState = true
        
        
        if(self.check == false){
            self.myData = self.dogsData
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "seguePost", sender: myData[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC = segue.destination as! PostViewController
        newVC.recivedTitle = sender as! String
    }
}

