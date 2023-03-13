//
//  CouponDetailsViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import UIKit

class CouponDetailsViewController: UIViewController {
    //view Model
    var couponDetailsViewModel : CouponDetailsViewModel = CouponDetailsViewModel()
 var codesDetailsObj : CodesDetails = CodesDetails()
 var couponObj : Coupon = Coupon()
 var  coponNetworkObj :CouponNetwork = CouponNetwork()
    
    @IBOutlet weak var couponTitleTF: UITextField!
    var flagOperation : String = ""
    var couponIDStr  : String?
    var couponTitleStr : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // productDetailsViewModel.getProductDetails()
        couponDetailsViewModel.bindResultToCouponView = {[weak self] in
            DispatchQueue.main.async{
                
                self?.couponTitleTF.text = self?.couponTitleStr
                
            }
            
        }
    }
    
    @IBAction func saveCouponTF(_ sender: Any) {
        if  (couponTitleTF.text == "")
        {
            let alert = UIAlertController(title:"Warning!!!", message: "Please Fill valid Data ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [self] UIAlertAction in
                
                dismiss(animated: true)
            }))
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
            
            if flagOperation == "Add"
            {
                let alert = UIAlertController(title:"Add Coupon", message: "Do You Want to Add New Coupon ?", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
                    
                    
                    //create Coupon
                    codesDetailsObj.code =   couponTitleTF.text!
                    couponObj.discount_code = codesDetailsObj
                    coponNetworkObj.addNewCoupon(coupon: couponObj) { _,_,_ in
                        
                    }

                    
                     self.navigationController?.popToRootViewController(animated: true)
                    
                }))
                alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
                    
                    dismiss(animated: true)
                    self.navigationController?.popToRootViewController(animated: true)
                }))
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            
        }}}
