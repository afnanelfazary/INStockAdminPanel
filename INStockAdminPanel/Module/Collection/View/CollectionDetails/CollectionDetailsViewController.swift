//
//  CollectionDetailsViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 10/03/2023.
//

import UIKit
import Apollo

class CollectionDetailsViewController: UIViewController {
    
    @IBOutlet weak var collectionNameTF: UITextField!
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var collectionImageUrlTF: UITextField!
    var collectionIDStr  : Int!
    var collectionImageUrlStr : String?
    var collectionTitleStr : String?
    var flagOperation:String = ""
    
    //view Model
    var collectionDetailsViewModel : CollectionDetailsViewModel = CollectionDetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  collectionDetailsViewModel.getCollectionDetails()
        //rounded cell , border & Shadow
        backgroundView.layer.cornerRadius = 12
        backgroundView.layer.masksToBounds = true
        backgroundView.layer.shadowOffset = CGSizeMake(6, 6)
        backgroundView.layer.shadowColor = UIColor.white.cgColor
        backgroundView.layer.shadowOpacity = 12
        backgroundView.layer.shadowRadius = 4
        
        collectionNameTF.text =  collectionTitleStr
        collectionImageUrlTF.text =  collectionImageUrlStr
        collectionDetailsViewModel.bindResultToCollectionView = {[weak self] in
            DispatchQueue.main.async{
                self?.collectionNameTF.text = self?.collectionTitleStr
                self?.collectionImageUrlTF.text = self?.collectionImageUrlStr
                
                
            }    }
        
    }
    
    
    @IBAction func saveBtn(_ sender: Any) {
        if  (collectionNameTF.text == "") || (collectionImageUrlTF.text == "")
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
                let alert = UIAlertController(title:"Add Collection", message: "Do You Want to Add New Collection ?", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
                    
                    
                    //create Collection
                    collectionDetailsViewModel.collectionTitle =   collectionNameTF.text!
                    collectionDetailsViewModel.collectionImg =  collectionImageUrlTF.text!
                    
                    
                    collectionDetailsViewModel.createCollection()
                    self.navigationController?.popToRootViewController(animated: true)
                    
                }))
                alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
                    
                    dismiss(animated: true)
                    self.navigationController?.popToRootViewController(animated: true)
                }))
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            
            else if flagOperation == "Update"
            {
                let alert = UIAlertController(title:"Update Collection", message: "Do You Want to Update this Collection ?", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
                    
                    //Update Collection
                    
                    print (flagOperation)
                    collectionDetailsViewModel.CollectionID = collectionIDStr
                    
                    collectionDetailsViewModel.collectionTitle =   collectionNameTF.text!
                    collectionDetailsViewModel.collectionImg =  collectionImageUrlTF.text!
                    collectionDetailsViewModel.updateCollection()
                    self.navigationController?.popToRootViewController(animated: true)
                }))
                alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
                    
                    dismiss(animated: true)
                    self.navigationController?.popToRootViewController(animated: true)
                }))
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            collectionDetailsViewModel.bindResultToCollectionView = {[weak self] in
                DispatchQueue.main.async{
                }
            }
        }
        
        
    }
    
}
