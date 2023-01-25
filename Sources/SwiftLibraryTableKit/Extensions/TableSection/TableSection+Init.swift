//
//  TableSection+Init.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import TableKit
import UIKit

public extension TableSection {
    
    convenience init(headerView: UIView? = nil,
                     headerHeight: CGFloat? = nil,
                     onlyRows rows: [Row]) {
        
        self.init(rows: rows)
        
        self.headerView = headerView
        self.headerHeight = headerHeight ?? .leastNonzeroMagnitude
        
        self.footerView = nil
        self.footerHeight = .leastNonzeroMagnitude
    }
    
}
