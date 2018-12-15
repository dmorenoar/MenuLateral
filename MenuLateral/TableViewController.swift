//
//  TableViewController.swift
//  MenuLateral
//
//  Created by DAM on 14/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var menu = ["Home", "About us"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellCustom

        cell.lblSection.text = menu[indexPath.row]
 
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealViewController:SWRevealViewController = self.revealViewController()
        
        let myCell:TableViewCellCustom = tableView.cellForRow(at: indexPath) as! TableViewCellCustom
        
        
        if myCell.lblSection.text == "About us" {
        
            let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "aboutUs") as! ViewControllerAboutUs
            
            let present = UINavigationController.init(rootViewController: vc)
            
            revealViewController.pushFrontViewController(present, animated: true)

        } else if myCell.lblSection.text == "Home" {
            
            let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = storyBoard.instantiateViewController(withIdentifier: "home") as! ViewController
            
            let present = UINavigationController.init(rootViewController: vc)
            
            revealViewController.pushFrontViewController(present, animated: true)
            
        }
    }

    

}
