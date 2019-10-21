//
//  Webpage.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI
import WebKit

struct Webpage : UIViewRepresentable {

    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct Webpage_Previews: PreviewProvider {
    static var previews: some View {
        Webpage(request: URLRequest(url: "http://www.byu.edu".url))
    }
}
