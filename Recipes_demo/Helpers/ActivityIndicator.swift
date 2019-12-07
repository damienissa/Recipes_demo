//
//  ActivityIndicator.swift
//  Recipes_demo
//
//  Created by Dima Virych on 07.12.2019.
//  Copyright © 2019 Virych. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
    
        UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        
        uiView.startAnimating()
    }
}
