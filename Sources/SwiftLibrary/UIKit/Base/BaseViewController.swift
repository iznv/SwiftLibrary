//
//  BaseViewController.swift
//  
//
//  Created by Ivan Zinovyev on 21.01.2023.
//

#if os(iOS)

import UIKit

open class BaseViewController<ViewModelType>: UIViewController {
    
    // MARK: - Properties
    
    public let viewModel: ViewModelType
    
    // MARK: - Init
    
    public init(viewModel: ViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    // MARK: - To Override
    
    open func addViews() { }
    
    open func configureConstraints() { }
    
    open func configureAppearance() {
        if #available(iOS 13.0, *) {
            view.backgroundColor = .systemBackground
        } else {
            view.backgroundColor = .white
        }
    }
    
}

// MARK: - Initialization

extension BaseViewController {
    
    func initialize() {
        addViews()
        configureConstraints()
        configureAppearance()
    }
    
}

#endif
