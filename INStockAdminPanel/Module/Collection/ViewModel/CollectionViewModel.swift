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
        
//        func getBrandProducts(link : String){
//
//
//            NetworkManger.fetchData(apiLink: link){[weak self] (data: BrandProducts?) in
//                self?.products = data?.products ?? []
//
//            }
//        }
    }
//    var smartCollectionsList = [SmartCollectionQuery.Data.Collection]()
   // var customCollectionsList = [CustomCollectionQuery.Data.Collection]()
    
    // var imagesList = [ImagesQuery.Data.Product]()
//    weak var delegate :collectionViewModelDelegate?
    
    
    
    // READ Smart Collection DATA
//    func fetchSmartCollection()
//    {
//        //  smartCollectionsList.removeAll()
//        //   customCollectionsList.removeAll()
//        
//        let apolloNetworkHelper = ApolloNetworkHelper.shared
//        apolloNetworkHelper.graphQlType = .products
//        apolloNetworkHelper.appolloClient.fetch(query: SmartCollectionQuery())
//        {
//            [weak self] result in
//            switch result {
//            case .success(let graphQLResult):
//                //  debugPrint("graphResult: \(graphQLResult)")
//                if let errors = graphQLResult.errors{
//                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
//                    self?.delegate?.didFail(errorMessage: errormessage)
//                }
//                if let productConnection = graphQLResult.data?.collections
//                    
//                {
//                    self?.smartCollectionsList.append(productConnection)
//                    
//                }
//                self?.delegate?.didReceivedData()
//            case .failure(let error):
//                debugPrint("Failure Error : \(error)")
//                self?.delegate?.didFail(errorMessage:error.localizedDescription)
//            }
//        }
//        
//    }
    
    
    // READ Smart Collection DATA
//    func fetchCustomCollection()
//    {
//        
//        let apolloNetworkHelper = ApolloNetworkHelper.shared
//        apolloNetworkHelper.graphQlType = .products
//        apolloNetworkHelper.appolloClient.fetch(query: CustomCollectionQuery())
//        { [weak self] result in
//            switch result {
//            case .success(let graphQLResult):
//                //  debugPrint("graphResult: \(graphQLResult)")
//                if let errors = graphQLResult.errors{
//                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
//                    self?.delegate?.didFail(errorMessage: errormessage)
//                }
//                if let productConnection = graphQLResult.data?.collections
//                    
//                {
//                    self?.customCollectionsList.append(productConnection)
//                    
//                }
//                self?.delegate?.didReceivedData()
//            case .failure(let error):
//                debugPrint("Failure Error : \(error)")
//                self?.delegate?.didFail(errorMessage:error.localizedDescription)
//            }
//        }
//        
//        
//        
//        
//    }
    
//}


