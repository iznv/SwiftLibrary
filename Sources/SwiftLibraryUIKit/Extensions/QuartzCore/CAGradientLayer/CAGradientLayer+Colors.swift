//
//  CAGradientLayer+Colors.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension CAGradientLayer {
    
    func set(colors: [UIColor]) {
        self.colors = colors.map { $0.cgColor }
    }
    
}
