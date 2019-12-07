//
//  WebView.swift
//  Recipes_demo
//
//  Created by Dima Virych on 07.12.2019.
//  Copyright © 2019 Virych. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
        uiView.load(request)
    }
}
