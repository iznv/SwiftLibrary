//
//  BaseTableViewCell.swift
//  
//
//  Created by Ivan Zinovyev on 21.01.2023.
//

import UIKit

open class BaseTableViewCell: UITableViewCell {
    
    // MARK: - Init
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    // MARK: - To Override
    
    open func commonInit() {
        initialize()
    }
    
    open func addViews() { }
    
    open func configureConstraints() { }
    
    open func configureAppearance() {
        selectionStyle = .none
        backgroundColor = .clear
    }
    
}

// MARK: - Initialization

public extension BaseTableViewCell {
    
    func initialize() {
        addViews()
        configureConstraints()
        configureAppearance()
    }
    
}
