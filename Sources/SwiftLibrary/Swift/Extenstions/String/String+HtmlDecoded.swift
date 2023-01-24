//
//  String+HtmlDecoded.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

public extension String {
    
    var htmlDecoded: String {
        let decoded = try? NSAttributedString(data: Data(utf8), options: [
            .documentType: NSAttributedString.DocumentType.html,
            .characterEncoding: String.Encoding.utf8.rawValue
        ], documentAttributes: nil).string

        return decoded ?? self
    }
    
}
