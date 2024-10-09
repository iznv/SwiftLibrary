//
//  Configurator.swift
//  
//
//  Created by Ivan Zinovyev on 23.02.2023.
//

@MainActor
public protocol Configurator {
    
    func configure()
    
}

@MainActor
public extension Array where Element == Configurator {
    
    func configure() {
        forEach { $0.configure() }
    }
    
}
