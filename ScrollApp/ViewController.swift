//
//  ViewController.swift
//  ScrollApp
//
//  Created by Aldo Abdiel Rodríguez Chávez on 3/29/17.
//  Copyright © 2017 Cesar Mauricio Cavazos Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBAction func changeSection(_ sender: UIButton) {
    }
    
 
    let dogs = ["dog-1", "dog-2", "dog-3", "dog-1", "dog-2", "dog-3"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (dogs.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (dogs[indexPath.row] + ".jpg"))
        cell.myLabel.text = dogs[indexPath.row]
        return (cell)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
