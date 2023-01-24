//
//  String+Attributes.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

public extension String {
    
    var attributed: NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }
    
}

public extension String {
    
    func with(_ attribute: NSAttributedString.Key,
              value: Any) -> NSMutableAttributedString {
        
        let attributed = self.attributed
        attributed.addAttribute(attribute, value: value, range: attributed.range)
        return attributed
    }
    
    func with(_ attributes: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attributed = self.attributed
        attributed.addAttributes(attributes, range: attributed.range)
        return attributed
    }
    
}
