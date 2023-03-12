//
//  ProductCollectionViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 04/03/2023.
//

import UIKit
import Kingfisher


class ProductTableViewController: UITableViewController

{
    
    //view Model
    var ProductViewModel :ProductsViewModel = ProductsViewModel()
    var productDetailsViewModel :ProductDetailsViewModel = ProductDetailsViewModel()
    
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
        
        ProductViewModel.delegate = self
        ProductViewModel.fetchProducts()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  ProductViewModel.productsList.first?.edges.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! ProductTableViewCell
        
        cell.layer.cornerRadius=15
        cell.layer.borderColor = #colorLiteral(red: 0.9725490196, green: 0.9098039216, blue: 0.9137254902, alpha: 0.3691322064)
        cell.layer.borderWidth = 1
        // Configure the cell
        
        cell.productName.text = ProductViewModel.productsList.first?.edges[indexPath.row].node.title
        
        cell.productTypeLabel.text = ProductViewModel.productsList.first?.edges[indexPath.row].node.productType
        cell.productPriceLabel.text = ProductViewModel.productsList.first?.edges[indexPath.row].node.variants.edges.first?.node.price
        let productImageUrl = URL( string: ProductViewModel.imagesList.first?.edges[indexPath.row].node.images.edges[0].node.src ??  "1")
        let processor = RoundCornerImageProcessor(cornerRadius: 20)
        if (productImageUrl != nil)
        {
            cell.productImage.kf.setImage(with: productImageUrl, placeholder: UIImage(named: "1"),options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ], progressBlock: nil, completionHandler: nil)
            
        }
        else{
            cell.productImage.image = UIImage(named: "1")
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let productDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailsViewController") as! ProductDetailsViewController
        //Flag operation is Update
        productDetailsVC.flagOperation = "Update"
        //pass data to deatils View
        productDetailsVC.productIDStr = ProductViewModel.productsList.first?.edges[indexPath.row].node.id
        productDetailsVC.productTitleStr = ProductViewModel.productsList.first?.edges[indexPath.row].node.title
        productDetailsVC.productTypeStr = ProductViewModel.productsList.first?.edges[indexPath.row].node.productType
        productDetailsVC.productDescriptionStr = ProductViewModel.productsList.first?.edges[indexPath.row].node.bodyHtml
        productDetailsVC.productPriceStr = ProductViewModel.productsList.first?.edges[indexPath.row].node.variants.edges.first?.node.price
        
        //  productDetailsVC.productImageUrlStr = ProductViewModel.productsList.first?.edges[indexPath.row].node.variants.
        self.navigationController?.pushViewController(productDetailsVC, animated: true)
    }
    //swife to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title:"Delete", message: "Are You Sure ?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
            var productId =  ProductViewModel.productsList.first?.edges[indexPath.row].node.id
            productDetailsViewModel.deleteProduct(productId: productId ?? "")
            self.tableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
            dismiss(animated: true)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
        
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121.0
    }
    
    
    @IBAction func addProductBtn(_ sender: Any)
    {let productDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailsViewController") as! ProductDetailsViewController
        //Flag operation is Add
        productDetailsVC.flagOperation = "Add"
        self.navigationController?.pushViewController(productDetailsVC, animated: true)
        
    }
    
    
    
    
}
extension ProductTableViewController : productsViewModelDelegate
{
    func didReceivedData() {
        tableView.reloadData()
    }
    
    func didFail(errorMessage: String) {
        debugPrint(errorMessage)
    }
    
    
    
    
    
}
