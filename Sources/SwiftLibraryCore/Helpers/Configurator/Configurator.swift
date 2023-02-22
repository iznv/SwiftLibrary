//
//  Configurator.swift
//  
//
//  Created by Ivan Zinovyev on 23.02.2023.
//

public protocol Configurator {
    
    func configure()
    
}

public extension Array where Element == Configurator {
    
    func configure() {
        forEach { $0.configure() }
    }
    
}
