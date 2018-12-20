//
//  Tools.swift
//  MenuLateral
//
//  Created by DAM on 20/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation

class Tools{
    
    
    
    func sideMenus(revealController:SWRevealViewController,btnMenu:UIBarButtonItem, view : UIView, vc:UIViewController) {
        
            btnMenu.target = revealController
            btnMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            revealController.rearViewRevealWidth = 275
            
        view.addGestureRecognizer(((vc.revealViewController()?.panGestureRecognizer())!))

        
    }
}
