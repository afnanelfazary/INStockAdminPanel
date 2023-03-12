//
//  ProductsViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 07/03/2023.
//

import Foundation
import Apollo


protocol productsViewModelDelegate : AnyObject {
    
    func  didReceivedData()
    func didFail(errorMessage:String)
    
}
class ProductsViewModel
{
    var productsList = [ProductsQuery.Data.Product]()
   var imagesList = [ImagesQuery.Data.Product]()
    weak var delegate :productsViewModelDelegate?
    
    
    // READ DATA
    func fetchProducts()
    {
   //     productsList.removeAll()
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        
        apolloNetworkHelper.appolloClient.fetch(query: ImagesQuery())
        {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):
                //  debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    self?.delegate?.didFail(errorMessage: errormessage)
                }
                if let productConnection = graphQLResult.data?.products
                {
                    self?.imagesList.append(productConnection)

                }
                self?.delegate?.didReceivedData()
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
                self?.delegate?.didFail(errorMessage:error.localizedDescription)
            }

        }
        
        apolloNetworkHelper.appolloClient.fetch(query: ProductsQuery())
        {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):
                //  debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    self?.delegate?.didFail(errorMessage: errormessage)
                }
                if let productConnection = graphQLResult.data?.products
                {
                    self?.productsList.append(productConnection)
                    
                }
                self?.delegate?.didReceivedData()
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
                self?.delegate?.didFail(errorMessage:error.localizedDescription)
            }
        }
        
    }}
    
   
