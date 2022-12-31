//
//  APIManager.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import Foundation


class APIManager {
    
    static let shared = APIManager()
    
    
    func getTransactionList(){
    
        //Url
        let url = URL(string: "https://designcode.io/data/transactions.json")!
       
        //Create Request
        var request = URLRequest(url: url)
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        //Create Task using URLSession
        let task = URLSession.shared.dataTask(with: url) { data , response , error in
            
            if let data = data{
                if let transactionList = try? JSONDecoder().decode([Transaction].self , from: data) {
                    print(transactionList)
                    
                } else {
                    print("Invalid Response")
                }
            } else if let error = error {
                print("Request error :\(error.localizedDescription)")
            }
            
        }
        
        task.resume()
    }
    
}


