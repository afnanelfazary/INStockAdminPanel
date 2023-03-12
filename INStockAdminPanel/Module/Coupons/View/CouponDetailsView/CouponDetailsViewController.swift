//
//  CouponDetailsViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import UIKit

class CouponDetailsViewController: UIViewController {

    
    @IBOutlet weak var couponTitleTF: UITextField!
    
    @IBOutlet weak var couponDiscountTF: UITextField!
    var flagOperation : String = ""
    var couponIDStr  : String?
    var couponTitleStr : String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    
    
    @IBAction func saveCouponTF(_ sender: Any) {
        
        
    }
}
