//
//  CollectionDataModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import Foundation
import UIKit

class SmartCollections : Decodable {
    
    var smart_collections : [Brands]
}

class Brands : Decodable {
    var title : String?
    var id : Int?
    var image : BrandImage?
    
}

class BrandImage : Decodable {
    
    var src : String?
}
