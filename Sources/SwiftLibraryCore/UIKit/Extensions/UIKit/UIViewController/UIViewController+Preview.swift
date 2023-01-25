//
//  UIViewController+Preview.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import SwiftUI
import UIKit

extension UIViewController {

    var preview: some View {
        Preview(viewController: self)
    }

}

// MARK: - Private

private extension UIViewController {
    
    struct Preview<V: UIViewController>: UIViewControllerRepresentable {

        // MARK: - Properties

        let viewController: V
        
        // MARK: - UIViewControllerRepresentable

        func makeUIViewController(context: UIViewControllerRepresentableContext<Preview<V>>) -> V {
            return viewController
        }

        func updateUIViewController(_ uiViewController: V,
                                    context: UIViewControllerRepresentableContext<Preview<V>>) { }

    }
    
}
