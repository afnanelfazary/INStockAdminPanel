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
        if  (couponTitleTF.text == "") || (couponDiscountTF.text == "")
        {
            let alert = UIAlertController(title:"Warning!!!", message: "Please Fill valid Data ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [self] UIAlertAction in
                
                dismiss(animated: true)
            }))
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
            
        }
    }
}
