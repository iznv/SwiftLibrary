//
//  UIWindow+RootViewController.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import UIKit

public extension UIWindow {
    
    func changeRoot(controller: UIViewController,
                    duration: TimeInterval = 0.3) {
        
        animateRootViewControllerChanging(controller: controller,
                                          duration: duration)
        
        rootViewController = controller
        makeKeyAndVisible()
    }
    
}

// MARK: - Private

private extension UIWindow {
    
    func animateRootViewControllerChanging(controller: UIViewController,
                                           duration: TimeInterval) {
        
        guard let snapshot = snapshotView(afterScreenUpdates: true) else { return }
        
        controller.view.addSubview(snapshot)
        
        UIView.animate(
            withDuration: duration,
            animations: {
                snapshot.layer.opacity = 0.0
            },
            completion: { _ in
                snapshot.removeFromSuperview()
            }
        )
    }
    
}

