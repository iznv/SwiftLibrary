//
//  HapticFeedback.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public struct HapticFeedback {
    
    static func notificationOccurred(type: UINotificationFeedbackGenerator.FeedbackType) {
        UINotificationFeedbackGenerator().notificationOccurred(type)
    }
    
    static func impactOccurred(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: style).impactOccurred()
    }
    
    static func selectionChanged() {
        UISelectionFeedbackGenerator().selectionChanged()
    }
    
}
