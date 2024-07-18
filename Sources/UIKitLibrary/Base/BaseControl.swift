//
//  BaseControl.swift
//  
//
//  Created by Ivan Zinovev on 01.08.2023.
//

import UIKit

open class BaseControl: UIControl {
    
    // MARK: - Properties
    
    public var adjustsAlphaWhenHighlighted = true
    
    // MARK: - Init
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
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
    
    open func configureAppearance() { }
    
    // MARK: - Overrides
    
    open override var isHighlighted: Bool {
        didSet {
            if adjustsAlphaWhenHighlighted {
                animate(isHighlighted: isHighlighted)
            }
        }
    }
    
}

// MARK: - Initialization

extension BaseControl {
    
    func initialize() {
        addViews()
        configureConstraints()
        configureAppearance()
    }
    
}
