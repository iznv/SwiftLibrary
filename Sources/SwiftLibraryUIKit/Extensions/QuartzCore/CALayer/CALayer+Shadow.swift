//
//  CALayer+Shadow.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension CALayer {
    
    func addShadow(color: UIColor = .black,
                   radius: CGFloat = 10,
                   opacity: Float = 0.5,
                   dx: CGFloat = 0,
                   dy: CGFloat = 0) {
        
        shadowColor = color.cgColor
        shadowRadius = radius
        shadowOpacity = opacity
        shadowOffset = CGSize(width: dx, height: dy)
        
        shouldRasterize = true
        rasterizationScale = UIScreen.main.nativeScale
    }
    
}
