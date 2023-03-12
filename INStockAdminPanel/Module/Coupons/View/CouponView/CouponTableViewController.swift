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
        
        tableView.reloadData()
        
        fetchAPI()
        tableView.reloadData()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
        
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
        // #warning Incomplete implementation, return the number of rows
        print(couponViewModel.couponsList.count)
        print(couponViewModel.couponsList.first?.edges[0].node.codeDiscount.asDiscountCodeBasic?.title)
        return couponViewModel.couponsList.first?.edges.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CouponTableViewCell
        
        // Configure the cell...
        cell.layer.cornerRadius=15
        cell.layer.borderColor = #colorLiteral(red: 0.9725490196, green: 0.9098039216, blue: 0.9137254902, alpha: 0.3691322064)
        cell.layer.borderWidth = 1
        // Configure the cell
        // cell.couponTitle.text = couponViewModel.couponsList.first?.nodes[indexPath.row].codeDiscount.asDiscountCodeBasic?.title
        cell.couponTitle.text = couponViewModel.couponsList.first?.edges[indexPath.row].node.codeDiscount.asDiscountCodeBasic?.title
        //cell.couponDiscount.text =  couponViewModel.couponsList[indexPath.row].nodes.first?.codeDiscount.asDiscountCodeBasic?.startsAt
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121.0
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
