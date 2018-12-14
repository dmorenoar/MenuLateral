//
//  ViewController.swift
//  MenuLateral
//
//  Created by DAM on 14/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var btnMenu: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sideMenus()
        
  
        navigationController?.navigationBar.tintColor = UIColor.gray
        
        navigationController?.navigationBar.barTintColor = UIColor.gray
        
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor.white]
    }

    func sideMenus(){
        
        if revealViewController() != nil{
            
            btnMenu.target = revealViewController()
            btnMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            
            view.addGestureRecognizer((self.revealViewController().panGestureRecognizer()))

        }
        
    }
    
    
    
}

