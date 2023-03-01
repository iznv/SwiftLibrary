//
//  EmptyCell.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import SnapKit
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
        containerView.snp.remakeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(horizontalInset)
            make.top.bottom.equalToSuperview()
        }
    }
    
}
