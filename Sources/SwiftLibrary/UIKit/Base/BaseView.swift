//
//  BaseView.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

#if os(iOS)

open class BaseView: UIView {
    
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
    
}

// MARK: - Initialization

extension BaseView {
    
    func initialize() {
        addViews()
        configureConstraints()
        configureAppearance()
    }
    
}

#endif
