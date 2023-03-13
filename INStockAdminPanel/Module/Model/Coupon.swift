

import Foundation

 

class Coupon : Codable {
    var discount_code :CodesDetails?
}

 
class CodesDetails : Codable {
    var id : Int?
    var price_rule_id : String?
    var code : String?
    var usage_count : String?
  
}

