//
//  UIStackView+Clear.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIStackView {
    
    func clear() {
        arrangedSubviews.forEach { $0.removeFromSuperview() }
    }
    
}
