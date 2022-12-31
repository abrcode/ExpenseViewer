//
//  PreviewData.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "01/24/2022", instructions: "Just for the reading", account: "Visa Apointement", merchant: "MasterCard", amount: 34.44, type: TransactionType.credit.rawValue , categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)


var transactionPreviewList = [Transaction](repeating: transactionPreviewData, count: 20)
