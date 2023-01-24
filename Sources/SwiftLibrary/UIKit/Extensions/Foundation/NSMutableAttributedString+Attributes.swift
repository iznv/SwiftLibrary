//
//  NSMutableAttributedString+Attributes.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

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
    
}
