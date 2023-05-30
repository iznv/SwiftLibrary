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
    
    case custom(leading: CGFloat, trailing: CGFloat)
    
    case center
    
    case leading(inset: CGFloat)
    
    case trailing(inset: CGFloat)
    
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
             alignment: UIStackViewHorizontalContentAlignment = .edgeToEdge(horizontalInset: 0),
             size: CGSize? = nil,
             constraints: ((ConstraintMaker) -> Void)? = nil) {

        let embededView = view.embedInView(height: height,
                                           alignment: alignment,
                                           size: size,
                                           constraints: constraints)
        
        addArrangedSubview(embededView)
    }

}

// MARK: - Private

private extension UIView {
    
    func embedInView(height: CGFloat?,
                     alignment: UIStackViewHorizontalContentAlignment,
                     size: CGSize?,
                     constraints: ((ConstraintMaker) -> Void)?) -> UIView {
        
        let view = UIView()
        view.backgroundColor = .clear
        
        view.addSubview(self)
        
        self.snp.remakeConstraints { make in
            if let height = height {
                make.height.equalTo(height)
            }
            
            make.top.bottom.equalToSuperview()
            
            switch alignment {
            case let .edgeToEdge(horizontalInset):
                make.leading.trailing.equalToSuperview().inset(horizontalInset)
            case let .custom(leading, trailing):
                make.leading.equalToSuperview().inset(leading)
                make.trailing.equalToSuperview().inset(trailing)
            case .center:
                make.centerX.equalToSuperview()
            case let .leading(inset):
                make.leading.equalToSuperview().inset(inset)
            case let .trailing(inset):
                make.trailing.equalToSuperview().inset(inset)
            }
            
            if let size = size {
                make.size.equalTo(size)
            }
            
            constraints?(make)
        }
        
        return view
    }
    
}
