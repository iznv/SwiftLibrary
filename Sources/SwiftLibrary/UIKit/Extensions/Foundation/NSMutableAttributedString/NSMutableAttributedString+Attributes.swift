//
//  NSMutableAttributedString+Attributes.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension NSMutableAttributedString {
    
    var range: NSRange {
        return mutableString.range(of: string)
    }
    
    func with(_ attribute: NSAttributedString.Key,
              value: Any) -> NSMutableAttributedString {
        
        addAttribute(attribute, value: value, range: range)
        return self
    }
    
    func with(_ attributes: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        addAttributes(attributes, range: range)
        return self
    }
    
    func withParagraphStyle(lineHeightMultiple: CGFloat = 1,
                            alignment: NSTextAlignment = .natural,
                            lineBreakMode: NSLineBreakMode = .byTruncatingTail,
                            lineBreakStrategy: NSParagraphStyle.LineBreakStrategy = .pushOut) -> NSMutableAttributedString {
        
        let style = NSMutableParagraphStyle()
        
        style.lineBreakMode = lineBreakMode
        style.lineHeightMultiple = lineHeightMultiple
        style.alignment = alignment
        style.lineBreakStrategy = lineBreakStrategy
        
        return with([NSAttributedString.Key.paragraphStyle: style])
    }
    
}
