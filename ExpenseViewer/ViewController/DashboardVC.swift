//
//  DashboardVC.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import UIKit

class DashboardVC: UIViewController {

    
    
    var arrayTransactions : [Transaction] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(APIManager.shared.getTransactionList())
        // Do any additional setup after loading the view.
    }
    


}
