//
//  CouponViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import Foundation

protocol couponsViewModelDelegate : AnyObject {
    
    func  didReceivedData()
    func didFail(errorMessage:String)
    
}
class CouponViewModel
{
 
    var couponsList = [CouponsQuery.Data.CodeDiscountNode]()
     weak var delegate :couponsViewModelDelegate?
    
    // READ DATA
    func fetchCoupons()
    {
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        
        apolloNetworkHelper.appolloClient.fetch(query: CouponsQuery())
        {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):
                //  debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    self?.delegate?.didFail(errorMessage: errormessage)
                }
                if let couponConnection = graphQLResult.data?.codeDiscountNodes
                {
                    self?.couponsList.append(couponConnection)
                    
                }
                self?.delegate?.didReceivedData()
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
                self?.delegate?.didFail(errorMessage:error.localizedDescription)
            }
        }
        
    }}
    

