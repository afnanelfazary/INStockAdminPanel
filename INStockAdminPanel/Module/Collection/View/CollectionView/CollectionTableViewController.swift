//
//  CollectionTableViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 10/03/2023.
//

import UIKit
import Kingfisher
import Apollo

class CollectionTableViewController: UITableViewController{
    
    
    
    
    
    //view Model
    var collectionViewModel : CollectionViewModel = CollectionViewModel()
    var collectionDetailsViewModel: CollectionDetailsViewModel  = CollectionDetailsViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  fetchAPI()
        // tableView.reloadData()
        //  collectionDetailsViewModel.deleteCollection(collectionId: "437836251413" )
        collectionViewModel.bindResultToHomeView = {[weak self] in
            DispatchQueue.main.async{
                self?.renderBrandCollection()
            }
        }
        collectionViewModel.getBrands()
        
        
    }
    
    func renderBrandCollection() {
        self.tableView.reloadData()
    }
    //    override func viewWillAppear(_ animated: Bool) {
    //        tableView.reloadData()
    //
    //    }
    //    override func viewDidAppear(_ animated: Bool) {
    //        tableView.reloadData()
    //
    //    }
    //    func fetchAPI()
    //    {
    //        collectionViewModel.delegate = self
    //        collectionViewModel.fetchSmartCollection()
    //    }
    //
    @IBAction func AddNewCollectionBtn(_ sender: Any) {
        let collectionDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "CollectionDetailsViewController") as! CollectionDetailsViewController
        //Flag operation is Add
        collectionDetailsVC.flagOperation = "Add"
        //   productDetails.productNameTF.text = ""
        //  productDetails.productPriceTF.text = ""
        // productDetails.productDescriptionTF.text = ""
        self.navigationController?.pushViewController(collectionDetailsVC, animated: true)
    }
    
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print (collectionViewModel.result.count)
        return collectionViewModel.result.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CollectionTableViewCell
        cell.layer.cornerRadius=15
        cell.layer.borderColor = #colorLiteral(red: 0.9725490196, green: 0.9098039216, blue: 0.9137254902, alpha: 0.3691322064)
        cell.layer.borderWidth = 1
        // Configure the cell
        
        cell.collectionNameCell.text = collectionViewModel.result[indexPath.row].title
        cell.collectionTypeLabel.text = "Smart Collection"
        let collectionImageUrl = URL( string: collectionViewModel.result[indexPath.row].image?.src ??  "1")
        let processor = RoundCornerImageProcessor(cornerRadius: 60)
        if (collectionImageUrl != nil)
        {
            cell.collectionImage.kf.setImage(with: collectionImageUrl, placeholder: UIImage(named: "1"),options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ], progressBlock: nil, completionHandler: nil)
            
        }
        else{
            cell.collectionImage.image = UIImage(named: "1")
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115.0
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let collectionDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "CollectionDetailsViewController") as! CollectionDetailsViewController
        //Flag operation is Update
        collectionDetailsVC.flagOperation = "Update"
        //pass data to deatils View
        collectionDetailsVC.collectionIDStr =     collectionViewModel.result[indexPath.row].id
        collectionDetailsVC.collectionTitleStr = collectionViewModel.result[indexPath.row].title
        
        
        collectionDetailsVC.collectionImageUrlStr
        = collectionViewModel.result[indexPath.row].image?.src
        self.navigationController?.pushViewController(collectionDetailsVC, animated: true)
    }
    
    //swife to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title:"Delete", message: "Are You Sure ?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
            var collectionId =  collectionViewModel.result[indexPath.row].id
            var globalId = String("gid://shopify/Collection/\(collectionId!)")
            
            collectionDetailsViewModel.deleteCollection(collectionId: globalId )
            self.tableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
            dismiss(animated: true)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
        
        
    }
    
}
extension CollectionTableViewController : collectionViewModelDelegate {
    func didReceivedData() {
        tableView.reloadData()
        
    }
    func didFail(errorMessage: String) {
        debugPrint(errorMessage)
    }
}
