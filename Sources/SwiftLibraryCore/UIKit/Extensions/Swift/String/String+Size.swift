//
//  String+Size.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

extension String {

    func size(for font: UIFont) -> CGSize {
        return size(withAttributes: [NSAttributedString.Key.font: font])
    }

}
