//
//  UIWindow+RootViewController.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import UIKit

extension UIWindow {
    
    func changeRoot(controller: UIViewController) {
        animateRootViewControllerChanging(controller: controller)
        
        rootViewController = controller
        makeKeyAndVisible()
    }
    
}

// MARK: - Private

extension UIWindow {
    
    func animateRootViewControllerChanging(controller: UIViewController,
                                           duration: TimeInterval = 0.5) {
        
        guard let snapshot = snapshotView(afterScreenUpdates: true) else { return }
        
        controller.view.addSubview(snapshot)
        
        UIView.animate(
            withDuration: 0.5,
            animations: {
                snapshot.layer.opacity = 0.0
            },
            completion: { _ in
                snapshot.removeFromSuperview()
            }
        )
    }
    
}

