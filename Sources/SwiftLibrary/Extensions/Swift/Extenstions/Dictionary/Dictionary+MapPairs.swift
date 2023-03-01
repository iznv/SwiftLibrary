//
//  Dictionary+MapPairs.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

public extension Dictionary {

    init(_ pairs: [Element]) {
        self.init()
        pairs.forEach { key, value in self[key] = value }
    }

    func mapPairs<OutKey: Hashable, OutValue>(_ transform: (Element)
        throws -> (OutKey, OutValue))
        rethrows -> [OutKey: OutValue] {

            return [OutKey: OutValue](try map(transform))
    }

}
