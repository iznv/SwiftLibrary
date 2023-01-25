//
//  UIImage+SymbolWeight.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import UIKit

public extension UIImage {
    
    func with(weight: UIImage.SymbolWeight) -> UIImage {
        return withConfiguration(UIImage.SymbolConfiguration(weight: weight))
    }
    
}
