//
//  UIImageView.swift
//  ExpenseViewer
//
//  Created by Aniket Rao on 01/01/23.
//

import Foundation
import UIKit

extension UIImageView {
    
    
    func setRounded() {
        let radius = self.frame.width / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    
}
