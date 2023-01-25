//
//  String+Attributes.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

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
    
    func withParagraphStyle(lineHeightMultiple: CGFloat = 1,
                            alignment: NSTextAlignment = .natural,
                            lineBreakMode: NSLineBreakMode = .byTruncatingTail,
                            lineBreakStrategy: NSParagraphStyle.LineBreakStrategy = .pushOut) -> NSMutableAttributedString {
        return attributed
            .withParagraphStyle(lineHeightMultiple: lineHeightMultiple,
                                alignment: alignment,
                                lineBreakMode: lineBreakMode,
                                lineBreakStrategy: lineBreakStrategy)
    }
    
}
