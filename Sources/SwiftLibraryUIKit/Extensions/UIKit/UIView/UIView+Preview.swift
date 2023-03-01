//
//  UIView+Preview.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import SwiftUI
import UIKit

public extension UIView {

    var preview: some View {
        Preview(view: self)
    }

}

// MARK: - Private

private extension UIView {

    struct Preview<V: UIView>: UIViewRepresentable {

        // MARK: - Properties

        let view: V
        
        // MARK: - UIViewRepresentable

        func makeUIView(context: UIViewRepresentableContext<Preview<V>>) -> V {
            return view
        }

        func updateUIView(_ uiView: V,
                          context: UIViewRepresentableContext<Preview<V>>) { }

    }

}
