//
//  ViewControllerAboutUs.swift
//  MenuLateral
//
//  Created by DAM on 14/12/2018.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewControllerAboutUs: UIViewController {
    @IBOutlet weak var sectionType: UILabel!
    @IBOutlet weak var lblAboutUs: UILabel!
    
    var sectionIndex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if sectionIndex == 0{
            print("Seccion 1")
            sectionType.text = "About us"
        }else{
            print("Seccion 2")
            sectionType.text = "Following"
        }
        view.addGestureRecognizer((self.revealViewController().panGestureRecognizer()))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
