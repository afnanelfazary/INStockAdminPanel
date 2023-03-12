//
//  CollectionTableViewCell.swift
//  INStockAdminPanel
//
//  Created by Afnan on 10/03/2023.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var collectionImage: UIImageView!
    
    @IBOutlet weak var collectionNameCell: UILabel!
    
    @IBOutlet weak var collectionTypeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
