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
        
        self.loadView()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadView(){
        
        self.imgViewTransaction.backgroundColor = .icon
        self.imgViewTransaction.setRounded()
        
    }
    
    
    func configueFiveTransaction(data : Transaction){
        print("Data of current Cell : \(data)")
        print("Merchant name :\(data.merchant)")
        self.lblMerchantName.text = data.merchant
        self.lblCategoryName.text = data.category

        self.lblTransactionTime.text = data.dateParsed

        self.lblTransactionAmount.text = "$\(data.signedAmount)"
        
    }
    
}
