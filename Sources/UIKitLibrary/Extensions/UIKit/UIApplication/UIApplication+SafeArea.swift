//
//  UIApplication+SafeArea.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIApplication {
    
    @available(iOS 11.0, *)
    var safeAreaInsets: UIEdgeInsets {
        guard let insets = delegate?.window??.safeAreaInsets else {
            fatalError()
        }
        
        return insets
    }
    
}
