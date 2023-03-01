//
//  Decorator.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

public struct Decorator<T> {
    
    let object: T
    
    func apply(_ decorations: Decoration<T>...) -> Void {
        decorations.forEach { $0(object) }
    }

}
