//
//  DashboardVC.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import UIKit

class DashboardVC: UIViewController {

    
    @IBOutlet weak var viewLastFiveTransaction: UIView!
    
    
    @IBOutlet weak var tblViewTransation: UITableView!
    @IBOutlet weak var csHeightOfTableView: NSLayoutConstraint!
    
    var arrayTransactions : [Transaction] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arrayTransactions = transactionPreviewList
        setUpUi()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.csHeightOfTableView.constant = tblViewTransation.contentSize.height
    }
    
    
    func setUpUi(){
        
        //tableview load
        setUpTableView()
        
    }
    
    func setUpTableView(){
        tblViewTransation.delegate = self
        tblViewTransation.dataSource = self
       
        
        self.tblViewTransation.register(UINib(nibName: "TransactionCell", bundle: nil), forCellReuseIdentifier: "TransactionCell")
       
    }

    @IBAction func btnSeeAllClicked(_ sender: Any) {
        
        
    }
    
}


extension DashboardVC : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayTransactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as! TransactionCell
        
        cell.selectionStyle = .none
        
        let transactionData = self.arrayTransactions[indexPath.row]
        
        cell.configueFiveTransaction(data: transactionData)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  80//UITableView.automaticDimension
    }
    
}
