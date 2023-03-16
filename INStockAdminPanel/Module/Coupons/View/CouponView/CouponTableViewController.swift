//
//  CouponTableViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import UIKit
import Kingfisher

class CouponTableViewController: UITableViewController {
    //view Model
    var couponViewModel  : CouponViewModel = CouponViewModel()
    var couponDetailsViewModel : CouponDetailsViewModel = CouponDetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        fetchAPI()
 
    }
    override func viewWillAppear(_ animated: Bool) {
        fetchAPI()
    }
    override func viewDidAppear(_ animated: Bool) {
        fetchAPI()
    }
    func fetchAPI()
    {
        tableView.reloadData()
        
        couponViewModel.delegate = self
        couponViewModel.fetchCoupons()
    }
    
    @IBAction func addNewCouponBtn(_ sender: Any) {
        let couponDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "CouponDetailsViewController") as! CouponDetailsViewController
        //Flag operation is Add
        couponDetailsVC.flagOperation = "Add"
        self.navigationController?.pushViewController(couponDetailsVC, animated: true)
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return couponViewModel.couponsList.first?.edges[0].node.codeDiscount.asDiscountCodeBasic?.codes.edges.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CouponTableViewCell
        
        // Configure the cell...
        cell.layer.cornerRadius=15
        cell.layer.borderColor = #colorLiteral(red: 0.9725490196, green: 0.9098039216, blue: 0.9137254902, alpha: 0.3691322064)
        cell.layer.borderWidth = 1
        // Configure the cell
    cell.couponTitle.text = couponViewModel.couponsList.first?.edges.first?.node.codeDiscount.asDiscountCodeBasic?.codes.edges[indexPath.row].node.code
 print (cell.couponTitle.text)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121.0
    }
    //swife to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title:"Delete", message: "Are You Sure ?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
       //     var couponId =  couponViewModel.couponsList.first?.edges.first?.node.codeDiscount.asDiscountCodeBasic?.codes.edges[indexPath.row].node.id
      //   var globalId = "gid://shopify/PriceRule/1380096934165/\(couponId!)"

        //    couponDetailsViewModel.discountCodeDelete(discountId: globalId)
            dismiss(animated: true)

            self.tableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
            dismiss(animated: true)
        }))

        self.present(alert, animated: true, completion: nil)



    }

}

extension CouponTableViewController : couponsViewModelDelegate
{
    func didReceivedData() {
        tableView.reloadData()
    }
    
    func didFail(errorMessage: String) {
        debugPrint(errorMessage)
    }
    
}
