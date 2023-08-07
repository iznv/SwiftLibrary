//
//  HapticFeedback.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import UIKit

public struct HapticFeedback {
    
    public static func notificationOccurred(type: UINotificationFeedbackGenerator.FeedbackType) {
        UINotificationFeedbackGenerator().notificationOccurred(type)
    }
    
    public static func impactOccurred(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: style).impactOccurred()
    }
    
    public static func selectionChanged() {
        UISelectionFeedbackGenerator().selectionChanged()
    }
    
}
