//
//  Array+Chunked.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

public extension Array {
    
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }

}
