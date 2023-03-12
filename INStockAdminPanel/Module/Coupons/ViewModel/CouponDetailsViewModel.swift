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
    

}
