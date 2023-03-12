//
//  ViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 04/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
//    func setData() {
//            let client = Graph.Client(
//                shopDomain: <YOUR SHOP DOMAIN>,
//                apiKey: <YOUR API KEY>
//            )
//
//            let task = client.queryGraphWith(q.getProductsQuery()) { response, error in
//                
//                let collections  = response?.shop.collections.edges.map { $0.node }
//                var loadedItems: [shopItem] = []
//                
//                collections?.forEach { collection in
//                    
//                    let group = DispatchGroup()
//                    
//                    collection.products.edges.map {
//                        group.enter()
//                        
//                        let itemTitle = $0.node.title
//                        let itemCost = ($0.node.priceRange.maxVariantPrice.amount as NSDecimalNumber).doubleValue
//                        let itemDesc = $0.node.description
//                        let itemID = $0.node.variants.edges[0].node.id
//                        let available = $0.node.availableForSale
//                        
//                        let variants = $0.node.variants
//                        
//                        if available == true {
//                            let url = $0.node.images.edges[0].node.originalSrc.absoluteURL
//                            
//                            // Loading item image asynchronously
//                            DispatchQueue.global().async {
//                                if let data = try? Data(contentsOf: url) {
//                                    let itemCostFormatted = Double(itemCost)
//                                    let ItemImage = UIImage(data: data)
//                                    
//                                    if loadedItems.contains(where: { $0.itemID == itemID.rawValue }) == false {
//                                        // Saving custom object to array to portray to the user later
//                                        loadedItems.append(shopItem(itemTitle: itemTitle, itemDesc: itemDesc, image: ItemImage, itemCost: itemCostFormatted, itemID: itemID.rawValue, itemCat: collection.title, available: available, variants: variants, variantCost: itemCost))
//                                        group.leave()
//                                    } else {
//                                        group.leave()
//                                    }
//                                }
//                            }
//                        }
//                    }
//                    
//                    group.notify(queue: .main) {
//                        self.collectionShopItems = loadedItems
//                    }
//                }
//            }
//            
//            task.resume()
//        }
//
//}
//
