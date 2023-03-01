//
//  UIPanGestureRecognizer+Direction.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public extension UIPanGestureRecognizer {
    
    enum Direction {
        
        case up
        
        case down
        
        case `static`
        
    }
    
}

public extension UIPanGestureRecognizer {
    
    func direction(in view: UIView) -> Direction {
        let velocity = self.velocity(in: view).y
        
        switch velocity {
        case let x where x < 0:
            return .up
        case let x where x > 0:
            return .down
        default:
            return .static
        }
    }
    
}
