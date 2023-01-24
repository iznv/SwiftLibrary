//
//  DateInterval+Intersection.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

extension DateInterval {
    
    func intersectsWithoutEdges(_ interval: DateInterval) -> Bool {
        guard self.intersects(interval) else { return false }
        guard let intersection = self.intersection(with: interval) else { return false }
        return intersection.start != intersection.end
    }
    
}
