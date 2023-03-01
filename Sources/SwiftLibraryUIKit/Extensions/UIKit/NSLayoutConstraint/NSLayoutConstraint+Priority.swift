//
//  NSLayoutConstraint+Priority.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension NSLayoutConstraint {
    
    func with(priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
    
}
