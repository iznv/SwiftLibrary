//
//  Dictionary+Operators.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

public extension Dictionary {

    static func + (left: Dictionary,
                   right: Dictionary) -> Dictionary {

        var dictionary = left

        for (key, value) in right {
            dictionary[key] = value
        }

        return dictionary
    }

}
