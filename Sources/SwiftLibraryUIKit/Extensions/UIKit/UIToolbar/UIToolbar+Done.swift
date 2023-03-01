//
//  UIToolbar+Done.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIToolbar {
    
    static func makeDoneToolbar(target: UIView) -> UIToolbar {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil,
                                            action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done,
                                         target: target,
                                         action: #selector(resignFirstResponder))
        
        keyboardToolbar.items = [flexibleSpace, doneButton]
        
        return keyboardToolbar
    }
    
}
