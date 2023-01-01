//
//  TransactionModel.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import Foundation


struct Transaction : Decodable {
    let id : Int
    let date : String
    let institution: String
    let account : String
    let merchant : String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryId : Int
    var category: String
    var isPending: Bool
    var isTransfer: Bool
    var isExpense : Bool
    var isEdited: Bool
    
    
    var dateParsed : String {
        return Utilities.formatDateToString(dateString: date, fromFormat: "MM/DD/YYYY", toFormat: "MMM dd,YYYY")
    }
    
    var signedAmount : Double {
        return type == TransactionType.credit.rawValue ? (amount) : -(amount)
    }
}

enum TransactionType : String {
    case debit = "debit"
    case credit = "credit"
}

