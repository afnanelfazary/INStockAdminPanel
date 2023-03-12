//
//  CouponDetailsViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import Foundation
class CouponDetailsViewModel  {
    var couponDetails = CouponsQuery.Data.CodeDiscountNode.self
    var bindResultToProductView : (() -> ()) = {}
    
    var collectionTitleInput : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    
//    
//    //Read Product
//    func getProductDetails ()
//    {
//        let apolloNetworkHelper = ApolloNetworkHelper.shared
//        apolloNetworkHelper.graphQlType = .products
//        
//        apolloNetworkHelper.appolloClient.fetch(query: CouponsQuery()){
//            [weak self] result in
//            switch result {
//            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
//                if let errors = graphQLResult.errors{
//                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
//                    //self?.delegate?.didFail(errorMessage: errormessage)
//                    print(errormessage)
//                }
//                ///get details of product in product info View
//                if (graphQLResult.data?.codeDiscountNodes) != nil
//                {
//                    self?.productID = graphQLResult.data?.products.edges.first?.node.id
//                    self?.productTitle =  graphQLResult.data?.products.edges.first?.node.title
//                    self?.productType =  graphQLResult.data?.products.edges.first?.node.productType
//                    self?.productDescription = graphQLResult.data?.products.edges.first?.node
//                        .bodyHtml
//                    self?.productPrice = graphQLResult.data?.products.edges.first?.node.variants.edges.first?.node.price
//                    self?.productBrand = graphQLResult.data?.products.edges.first?.node.vendor
//                    self?.productStatus = graphQLResult.data?.products
//                        .edges.first?.node.status
//                    //   self?.productImg =   UIImage(named: "1") as! String
//                    
//                    
//                    
//                }
//            case .failure(let error):
//                debugPrint("Failure Error : \(error)")
//            }
//        }}
//    
}
