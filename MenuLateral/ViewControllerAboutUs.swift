//
//  ViewControllerAboutUs.swift
//  MenuLateral
//
//  Created by DAM on 14/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerAboutUs: UIViewController {
   
    @IBOutlet weak var lblAboutUs: UILabel!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenus()
        
    }
    
    
    func sideMenus() {
 
        if revealViewController() != nil{
 
            btnMenu.target = revealViewController()
            btnMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            view.addGestureRecognizer((self.revealViewController().panGestureRecognizer()))
        }
 
    }

}
