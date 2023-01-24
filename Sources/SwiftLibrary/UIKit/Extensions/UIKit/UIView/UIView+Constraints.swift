//
//  UIView+Constraints.swift
//  
//
//  Created by Ivan Zinovyev on 21.01.2023.
//

#if os(iOS)

import UIKit

public extension UIView {
    
    func activate(_ constraints: (UIView) -> [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints(self))
    }
    
}

#endif
