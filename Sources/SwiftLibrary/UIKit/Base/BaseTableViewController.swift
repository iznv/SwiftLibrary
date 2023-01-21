//
//  BaseTableViewController.swift
//  
//
//  Created by Ivan Zinovyev on 21.01.2023.
//

import UIKit

open class BaseTableViewController<ViewModelType>: BaseViewController<ViewModelType> {
    
    // MARK: - Views
    
    public lazy var tableView: UITableView = {
        let view = UITableView()
        
        view.backgroundColor = .clear
        view.separatorStyle = .none
        view.contentInset = contentInset
        
        return view
    }()
    
    // MARK: - Computed Properties
    
    open var contentInset: UIEdgeInsets {
        return .zero
    }
    
    // MARK: - Life Cycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
        }
    }
    
    // MARK: - Subviews
    
    override open func addViews() {
        view.addSubview(tableView)
    }
    
    // MARK: - Constraints
    
    override open func configureConstraints() {
        tableView.activate {[
            $0.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            $0.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            $0.topAnchor.constraint(equalTo: view.topAnchor),
            $0.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]}
    }
    
    // MARK: - To Override
    
    open func configureTableView() { }
    
}
