//
//  EmptyRow.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import TableKit
import UIKit

class EmptyRow: TableRow<EmptyCell> {
    
    // MARK: - Properties
    
    private let height: CGFloat
    
    private let color: UIColor
    
    private let horizontalInset: CGFloat
    
    // MARK: - Init
    
    init(height: CGFloat,
         color: UIColor = .clear,
         horizontalInset: CGFloat = 0) {
        
        self.height = height
        self.color = color
        self.horizontalInset = horizontalInset
        
        super.init(item: horizontalInset)
    }
    
    // MARK: - Overrides
    
    override var defaultHeight: CGFloat? {
        return height
    }
    
    override func configure(_ cell: UITableViewCell) {
        super.configure(cell)
        
        (cell as? EmptyCell)?.containerView.backgroundColor = color
    }
    
}
