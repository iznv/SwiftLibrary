//
//  Calendar+Extensions.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

public extension Calendar {
    
    var localizedWeekdaySymbols: [String] {
        let symbols = weekdaySymbols
        return Array(symbols[firstWeekday - 1..<symbols.count]) + symbols[0..<firstWeekday - 1]
    }
    
    var localizedShortWeekdaySymbols: [String] {
        let symbols = shortWeekdaySymbols
        return Array(symbols[firstWeekday - 1..<symbols.count]) + symbols[0..<firstWeekday - 1]
    }
    
    func generateDateRange(from startDate: Date,
                           to endDate: Date,
                           component: Calendar.Component = .day) -> [Date] {
        
        if startDate > endDate { return [] }
        
        var returnDates: [Date] = []
        var currentDate = startDate
        
        repeat {
            returnDates.append(currentDate)
            currentDate = startOfDay(for: date(byAdding: component, value: 1, to: currentDate)!)
        } while currentDate <= endDate
        
        return returnDates
    }
    
}

