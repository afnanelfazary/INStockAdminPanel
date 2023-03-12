//
//  ProductDetailsViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 08/03/2023.
//

import UIKit
import TextFieldEffects
import Kingfisher
class ProductDetailsViewController: UIViewController {
    var flagOperation : String = ""
    @IBOutlet weak var productImageTF: UITextField!
    
    @IBOutlet weak var brandBtn: UIButton!
    @IBOutlet weak var productNameTF: UITextField!
    @IBOutlet weak var productPriceTF: UITextField!
    @IBOutlet weak var productDescriptionTF: UITextField!
    
    @IBOutlet weak var productTypeSegmented: UISegmentedControl!
        
    var productIDStr  : String?
    var productImageUrlStr : String?
    var productTitleStr : String?
    var productPriceStr : String?
    var productTypeStr : String?
    var productBrandStr : String?
    var productDescriptionStr : String?
    var productStatusStr : String?
    
    //view Model
    var productDetailsViewModel : ProductDetailsViewModel = ProductDetailsViewModel()
  
    override func viewDidLoad() {
        super.viewDidLoad()
       // let collectionId :String = "437836251413"
        //GraphQLID = String (collectionViewModel.result[indexPath.row].id!)
     //   coll.deleteCollection(collectionId: "437836251413" )
        //pup up Menu
        getBrandMenu()
        
        productDetailsViewModel.getProductDetails()
        productDetailsViewModel.bindResultToProductView = {[weak self] in
            DispatchQueue.main.async{
                
                self?.productNameTF.text = self?.productTitleStr
                self?.productDescriptionTF.text =   self?.productDescriptionStr
                self?.productPriceTF.text = self?.productPriceStr
                
                
            }
            
        }
    }
    //Save Product
    @IBAction func saveBtn(_ sender: Any) {
        getBrandMenu()
        
        if flagOperation == "Add"
        {
            let alert = UIAlertController(title:"Add Product", message: "Do You Want to Add New Product ?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
                
                
                //create product
                productDetailsViewModel.productTitleInput =   productNameTF.text!
                productDetailsViewModel.productTypeInput =  productTypeStr!
                productDetailsViewModel.productBrand =  productBrandStr!
                productDetailsViewModel.productDescription =  productDescriptionTF.text!
                productDetailsViewModel.productPrice =  productPriceTF.text!
                productDetailsViewModel.productImg =  productImageTF.text!
                
                productDetailsViewModel.createProduct()
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
            let alert = UIAlertController(title:"Update Product", message: "Do You Want to Update this Product ?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { [self] UIAlertAction in
                
                //Update product
                
                print (flagOperation)
                productDetailsViewModel.productID = productIDStr
                
                productDetailsViewModel.productTitle =   productNameTF.text!
                productDetailsViewModel.productType =  productTypeStr!
                productDetailsViewModel.productBrand =  productBrandStr!
                productDetailsViewModel.productDescription =  productDescriptionTF.text!
                productDetailsViewModel.productPrice =  productPriceTF.text!
                productDetailsViewModel.productImg =  productImageTF.text!
                productDetailsViewModel.updateProduct()
                self.navigationController?.popToRootViewController(animated: true)
            }))
            alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [self] UIAlertAction in
                
                dismiss(animated: true)
                self.navigationController?.popToRootViewController(animated: true)
            }))
            
            self.present(alert, animated: true, completion: nil)
            
            
        }
        productDetailsViewModel.bindResultToProductView = {[weak self] in
            DispatchQueue.main.async{
            }
        }
        
    }
    
    
    //Pull Up Menu
    func getBrandMenu()
    {
        
        brandBtn.menu = UIMenu(title: "Brand", options: .singleSelection, children: [
            UIAction(title: "ADIDAS",handler: { [weak self] action in
                self?.productBrandStr = "ADIDAS"
                print("ADIDAS")
            }),
            UIAction(title: "DR MARTENS", handler: { [weak self] action in
                self?.productBrandStr = "DR MARTENS"
                print("DR MARTENS")
            }),
            UIAction(title: "FLEX FIT",handler: { [weak self] action in
                self?.productBrandStr = "FLEX FIT"
                print("FLEX FIT")
                
            }),
            UIAction(title: "HERSCHEL",handler: { [weak self] action in
                self?.productBrandStr = "HERSCHEL"
                print("HERSCHEL")
                
            }),
            UIAction(title: "NIKE",handler: { [weak self] action in
                self?.productBrandStr = "NIKE"
                print("NIKE")
                
            }),
            UIAction(title: "PALLADIUM",handler: { [weak self] action in
                self?.productBrandStr = "PALLADIUM"
                print("PALLADIUM")
                
            }),
            UIAction(title: "PUMA",handler: { [weak self] action in
                self?.productBrandStr = "PUMA"
                print("PUMA")
                
            }),
            UIAction(title: "SUPRA",handler: { [weak self] action in
                self?.productBrandStr = "SUPRA"
                print("SUPRA")
                
            }),
            UIAction(title: "TIMBERLAND",handler: { [weak self] action in
                self?.productBrandStr = "TIMBERLAND"
                print("TIMBERLAND")
                
            }),
            UIAction(title: "VANS",handler: { [weak self] action in
                self?.productBrandStr = "VANS"
                print("VANS")
            }),
            UIAction(title: "ASICS TIGER",handler: { [weak self] action in
                self?.productBrandStr = "ASICS TIGER"
                print("ASICS TIGER")
                
            }),
            UIAction(title: "CONVERSE",handler: { [weak self] action in
                self?.productBrandStr = "CONVERSE"
                print("CONVERSE")
                
            })
        ])
        
        brandBtn.showsMenuAsPrimaryAction = true
        brandBtn.changesSelectionAsPrimaryAction = true
    }
    
    
    ///product Type Segmented
    
    
    @IBAction func productTypeSegmented(_ sender: Any) {
        switch productTypeSegmented.selectedSegmentIndex
        {
        case 0 :
            
            productTypeStr = "ACCESSORIES"
            break
        case 1 :
            productTypeStr = "Shoes"
            
            break
        case 2 :
            productTypeStr = "T-SHIRTS"
            
            break
        default:
            break
        }
    }

}

