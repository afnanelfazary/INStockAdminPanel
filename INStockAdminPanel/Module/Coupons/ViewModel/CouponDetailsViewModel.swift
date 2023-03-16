//
//  CouponDetailsViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import Foundation
import Apollo
class CouponDetailsViewModel  {
    var couponDetails = CouponsQuery.Data.CodeDiscountNode.self
    var bindResultToCouponView : (() -> ()) = {}
    
    var couponTitle  : String!  {
        didSet{
            bindResultToCouponView()
        }
    }
    
    var couponDiscount  : String!  {
        didSet{
            bindResultToCouponView()
        }
    }
    
    
    //Delete Collection
//
//    func discountCodeDelete(discountId:String )
//    {
//
//        let apolloNetworkHelper = ApolloNetworkHelper.shared
//        apolloNetworkHelper.graphQlType = .products
//        apolloNetworkHelper.appolloClient.perform(mutation: DiscountCodeDeleteMutation(id: discountId))
//        {  [weak self] result in
//            switch result {
//            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
//                if let errors = graphQLResult.errors{
//                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
//                    print("Failure Error : \(errormessage)")
//                }
//                if (graphQLResult.data?.discountCodeDelete?.deletedCodeDiscountId) != nil
//                {
//
//                }
//            case .failure(let error):
//                debugPrint("Failure Error : \(error)")
//            }
//        }
//
//    }
//}
    
    func discountCodeDelete(discountId:String )
    {
        
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        apolloNetworkHelper.appolloClient.perform(mutation: DiscountCodeRedeemCodeBulkDeleteMutation(discountId: discountId))
        {  [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    print("Failure Error : \(errormessage)")
                }
                if (graphQLResult.data?.discountCodeRedeemCodeBulkDelete?.job) != nil
                {
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        }
        
    }
}
