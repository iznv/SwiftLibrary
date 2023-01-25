//
//  DecoratorCompatible.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public protocol DecoratorCompatible {

    associatedtype DecoratorCompatibleType

    var decorator: Decorator<DecoratorCompatibleType> { get }

}

public extension DecoratorCompatible {

    var decorator: Decorator<Self> {
        return Decorator(object: self)
    }

}

extension UIView: DecoratorCompatible {}
