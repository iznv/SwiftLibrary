//
//  NSTextAttachment+Extensions.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension NSTextAttachment {
    
    func alignCenter(font: UIFont,
                     image: UIImage?,
                     offsetY: CGFloat = .zero) {
        
        guard let image = image else { return }
        
        bounds = CGRect(x: 0,
                        y: (font.capHeight - image.size.height) / 2 + offsetY,
                        width: image.size.width,
                        height: image.size.height)
    }
    
}
