//
//  UIScreen+DeviceSize.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIScreen {

    /// 5, 5s, 5c, SE (1st gen)
    var isSmall: Bool {
        return bounds.height <= 568
    }
    
    /// 6, 6s, 7, 8, SE (2nd gen)
    var isCompact: Bool {
        return bounds.height <= 667
    }
    
}

public extension UIScreen {
    
    func value(default: CGFloat,
               compact: CGFloat,
               small: CGFloat) -> CGFloat {
        
        if isSmall {
            return small
        } else if isCompact {
            return compact
        } else {
            return `default`
        }
    }
    
}
