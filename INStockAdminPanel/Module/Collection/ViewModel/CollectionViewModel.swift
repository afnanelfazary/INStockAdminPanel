//
//  CollectionViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 10/03/2023.
//

import Foundation

protocol collectionViewModelDelegate : AnyObject {
    
    func  didReceivedData()
    func didFail(errorMessage:String)
    
}

class CollectionViewModel

{
    
    
    
    var bindResultToHomeView : (() -> ()) = {}
    var result : [Brands] = []{
        didSet{
            //bind the result
            bindResultToHomeView()
        }
    }
    
    
    func getBrands(){
        
        NetworkManger.fetchData(apiLink: "https://b61bfc9ff926e2344efcd1ffd0d0b751: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@mad-ios-1.myshopify.com/admin/api/2023-01/smart_collections.json"){[weak self] (data: SmartCollections?) in
            self?.result = data?.smart_collections ?? []
        }}
    
}
