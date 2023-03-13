//
//  ViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 04/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true 

        
    }
    
    @IBAction func getStartedBtn(_ sender: Any) {
        
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController

        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    
}
