//
//  UIView+Animation.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIView {

    func crossDissolveTransition(duration: TimeInterval = 0.3,
                                 closure: @escaping () -> Void) {
        
        crossDissolveTransition(duration: duration,
                                closure: closure,
                                completion: nil)
    }

    func crossDissolveTransition(duration: TimeInterval = 0.3,
                                 closure: @escaping () -> Void,
                                 completion: (() -> Void)? = nil) {
        
        UIView.transition(with: self,
                          duration: duration,
                          options: .transitionCrossDissolve,
                          animations: closure) { _ in
            completion?()
        }
    }

}
