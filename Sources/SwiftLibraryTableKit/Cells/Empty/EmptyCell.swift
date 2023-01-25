//
//  EmptyCell.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import SwiftLibraryCore
import TableKit
import UIKit

public class EmptyCell: UITableViewCell {
    
    // MARK: - Views
    
    let containerView = UIView()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        contentView.addSubview(containerView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - ConfigurableCell

extension EmptyCell: ConfigurableCell {
    
    public func configure(with horizontalInset: CGFloat) {
        containerView.activate {[
            $0.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalInset),
            $0.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: horizontalInset),
            $0.topAnchor.constraint(equalTo: contentView.topAnchor),
            $0.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]}
    }
    
}
