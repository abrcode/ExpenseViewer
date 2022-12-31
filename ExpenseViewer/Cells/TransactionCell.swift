//
//  TransactionCell.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import UIKit

class TransactionCell: UITableViewCell {

    @IBOutlet weak var imgViewTransaction: UIImageView!
    
    @IBOutlet weak var lblMerchantName: UILabel!
    @IBOutlet weak var lblCategoryName: UILabel!
    @IBOutlet weak var lblTransactionTime: UILabel!
    @IBOutlet weak var lblTransactionAmount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
