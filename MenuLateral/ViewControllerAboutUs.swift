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

         tools.sideMenus(revealController: revealViewController(), btnMenu: btnMenu, view: view, vc: self)
  
    }
    
}
