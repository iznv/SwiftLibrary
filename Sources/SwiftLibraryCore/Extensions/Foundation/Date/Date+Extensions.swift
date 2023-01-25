//
//  Date+Extensions.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import Foundation

public extension Date {

    init(year: Int,
         month: Int = 1,
         day: Int = 1) {
        
        self = Calendar.current.date(from: DateComponents(year: year,
                                                          month: month,
                                                          day: day)) ?? Date()
    }
    
}

public extension Date {
    
    var numberOfWeeksInMonth: Int {
        let weekRange = Calendar.current.range(of: .weekOfMonth,
                                               in: .month,
                                               for: self)
        return weekRange?.count ?? 0
    }
    
}
