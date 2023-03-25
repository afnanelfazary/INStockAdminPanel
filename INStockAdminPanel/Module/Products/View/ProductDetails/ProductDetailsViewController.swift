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
    @IBOutlet weak var productDescriptionTF: UITextView!
    
    @IBOutlet weak var productTypeSegmented: UISegmentedControl!
    
    var productIDStr  : String?
    var productImageUrlStr : String?
    var productTitleStr : String?
    var productPriceStr : String?
    var productTypeStr : String?
    var productBrandStr : String?
    var productDescriptionStr : String?
 
    //view Model
    var productDetailsViewModel : ProductDetailsViewModel = ProductDetailsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getBrandMenu()
        productDetailsViewModel.getProductDetails()
        productDetailsViewModel.bindResultToProductView = {[weak self] in
            DispatchQueue.main.async{
                
                self?.productNameTF.text = self?.productTitleStr
                self?.productDescriptionTF.text = self?.productDescriptionStr
                self?.productImageTF.text = self?.productImageUrlStr
                self?.productPriceTF.text = self?.productPriceStr
                if self?.productTypeStr == "ACCESSORIES"
                {
                    self?.productTypeSegmented.selectedSegmentIndex = 0
                 
                }
                else if self?.productTypeStr == "Shoes"
                {
                    self?.productTypeSegmented.selectedSegmentIndex = 1

                }
                else if  self?.productTypeStr == "T-SHIRTS"
                {
                    self?.productTypeSegmented.selectedSegmentIndex = 2

                }
            }
            
        }
    }
    //Save Product
    @IBAction func saveBtn(_ sender: Any) {
        getBrandMenu()
        
        if  (productNameTF.text == "") || (productImageTF.text == "") || (productDescriptionTF.text == "") || (productPriceTF.text == "") || (productTypeStr == "")
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
    }
    
    //Pull Up Menu
    func getBrandMenu()
    {
        
        brandBtn.menu = UIMenu(title: "Brand", options: .singleSelection, children: [
            UIAction(title: "ADIDAS",handler: { [weak self] action in
                self?.productBrandStr = "ADIDAS"
             }),
            UIAction(title: "DR MARTENS", handler: { [weak self] action in
                self?.productBrandStr = "DR MARTENS"
             }),
            UIAction(title: "FLEX FIT",handler: { [weak self] action in
                self?.productBrandStr = "FLEX FIT"
 
            }),
            UIAction(title: "HERSCHEL",handler: { [weak self] action in
                self?.productBrandStr = "HERSCHEL"
 
            }),
            UIAction(title: "NIKE",handler: { [weak self] action in
                self?.productBrandStr = "NIKE"
 
            }),
            UIAction(title: "PALLADIUM",handler: { [weak self] action in
                self?.productBrandStr = "PALLADIUM"
 
            }),
            UIAction(title: "PUMA",handler: { [weak self] action in
                self?.productBrandStr = "PUMA"
 
            }),
            UIAction(title: "SUPRA",handler: { [weak self] action in
                self?.productBrandStr = "SUPRA"
 
            }),
            UIAction(title: "TIMBERLAND",handler: { [weak self] action in
                self?.productBrandStr = "TIMBERLAND"
 
            }),
            UIAction(title: "VANS",handler: { [weak self] action in
                self?.productBrandStr = "VANS"
             }),
            UIAction(title: "ASICS TIGER",handler: { [weak self] action in
                self?.productBrandStr = "ASICS TIGER"
 
            }),
            UIAction(title: "CONVERSE",handler: { [weak self] action in
                self?.productBrandStr = "CONVERSE"
 
            }),
            UIAction(title: "Hermes",handler: { [weak self] action in
                self?.productBrandStr = "Hermes"
 
            }),
            UIAction(title: "PRADA",handler: { [weak self] action in
                self?.productBrandStr = "PRADA"
              }),
            UIAction(title: "Supreme",handler: { [weak self] action in
                self?.productBrandStr = "Supreme"
              }),
            UIAction(title: "H&M",handler: { [weak self] action in
                self?.productBrandStr = "H&M"
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

