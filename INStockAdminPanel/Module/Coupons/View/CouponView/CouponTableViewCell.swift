//
//  CouponTableViewCell.swift
//  INStockAdminPanel
//
//  Created by Afnan on 11/03/2023.
//

import UIKit

class CouponTableViewCell: UITableViewCell {

    @IBOutlet weak var couponTitle: UILabel!
    
    
    @IBOutlet weak var couponDiscount: UILabel!
    
    
    @IBOutlet weak var couponImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
