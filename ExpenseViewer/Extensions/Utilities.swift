//
//  Utilities.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 31/12/22.
//

import Foundation


class Utilities {
    
    // MARK: - Change Date formate
    static func formatDateToString(dateString : String!, fromFormat sourceFormat: String!, toFormat desFormat: String!) -> String {
        
        if dateString == "" {
            return ""
        }
        
        let dateFormateOfServer = DateFormatter()
        dateFormateOfServer.locale = Locale(identifier: "en_US")
        dateFormateOfServer.dateFormat = sourceFormat
        
        let dateFormateToShow = DateFormatter()
        dateFormateToShow.locale = Locale(identifier: "en_US")
        dateFormateToShow.dateFormat = desFormat
        
        let date = dateFormateOfServer.date(from: dateString)
        return String(dateFormateToShow.string(from: date!))
    }
    
}
