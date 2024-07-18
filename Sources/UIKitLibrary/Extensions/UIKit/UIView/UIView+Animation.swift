//
//  UIView+Animation.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIView {
    
    func animate(isHighlighted: Bool,
                 duration: TimeInterval = 0.25,
                 normalAlpha: CGFloat = 1,
                 highlightedAlpha: CGFloat = 0.6) {
        
        UIView.animate(withDuration: duration,
                       delay: 0.0,
                       options: [.allowUserInteraction, .beginFromCurrentState]) { [weak self] in

            self?.alpha = isHighlighted
                ? highlightedAlpha * normalAlpha
                : normalAlpha
        }
    }
    
    func animate(isHighlighted: Bool,
                 duration: TimeInterval = 0.25,
                 normalBackgroundColor: UIColor?,
                 highlightedBackgroundColor: UIColor?) {
        
        UIView.animate(withDuration: duration,
                       delay: 0.0,
                       options: [.allowUserInteraction, .beginFromCurrentState]) { [weak self] in

            self?.backgroundColor = isHighlighted
                ? highlightedBackgroundColor
                : normalBackgroundColor
        }
    }

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
                          options: [.transitionCrossDissolve, .allowUserInteraction, .beginFromCurrentState],
                          animations: closure) { _ in
            completion?()
        }
    }

}
