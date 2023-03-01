//
//  UIScrollView+Extensions.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIScrollView {
    
    func scrollToTop(shouldLayoutBefore: Bool = true,
                     animated: Bool = true) {
        
        if shouldLayoutBefore {
            layoutIfNeeded()
        }
        
        setContentOffset(.zero, animated: animated)
    }
    
}
