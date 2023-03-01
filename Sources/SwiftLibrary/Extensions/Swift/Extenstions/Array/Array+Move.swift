//
//  Array+Move.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

public extension Array {
    
    mutating func move(from: Int, to: Int) {
        insert(remove(at: from), at: to)
    }

}
