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
    
}
