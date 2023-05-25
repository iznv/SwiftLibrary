//
//  UIStackView+Subviews.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import SnapKit
import UIKit

// MARK: - Models

public enum UIStackViewHorizontalContentAlignment {
    
    case edgeToEdge(horizontalInset: CGFloat)
    
    case center
    
}

// MARK: - Basic

public extension UIStackView {

    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach(addArrangedSubview(_:))
    }
    
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach(addArrangedSubview(_:))
    }

}

// MARK: - Advanced

public extension UIStackView {
    
    func addSpacer(height: CGFloat) {
        let view = UIView()
        view.backgroundColor = .clear
        
        addArrangedSubview(view)
        
        view.snp.remakeConstraints { make in
            make.height.equalTo(height)
        }
    }
    
    func add(view: UIView,
             height: CGFloat? = nil,
             alignment: UIStackViewHorizontalContentAlignment = .edgeToEdge(horizontalInset: 0)) {

        let embededView = view.embedInView(height: height,
                                           alignment: alignment)
        
        addArrangedSubview(embededView)
    }

}

// MARK: - Private

private extension UIView {
    
    func embedInView(height: CGFloat?,
                     alignment: UIStackViewHorizontalContentAlignment) -> UIView {
        
        let view = UIView()
        view.backgroundColor = .clear
        
        view.addSubview(self)
        
        self.snp.remakeConstraints { make in
            if let height = height {
                make.height.equalTo(height)
            }
            
            make.top.bottom.equalToSuperview()
            
            switch alignment {
            case .edgeToEdge(let horizontalInset):
                make.leading.trailing.equalToSuperview().inset(horizontalInset)
            case .center:
                make.centerX.equalToSuperview()
            }
        }
        
        return view
    }
    
}
