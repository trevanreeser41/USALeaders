//
//  Webpage.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

//import SwiftUI
//import WebKit
//
//struct Webpage : UIViewRepresentable {
//
//    var onDismiss: () -> ()
//    let request: URLRequest
//
//    func makeUIView(context: Context) -> WKWebView  {
//        return WKWebView()
//    }
//
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        uiView.load(request)
//    }
//
//}
struct Webpage: View {

    var onDismiss: () -> ()
    var body: some View {
        NavigationView {
        Text("Display page here")
            .navigationBarTitle("Webpage", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.onDismiss()
            }) {
                Text("Cancel")
            })
        }
    }
}

struct Webpage_Previews: PreviewProvider {
    static var previews: some View {
        //Webpage(onDismiss: {}, request: URLRequest(url: "http://www.byu.edu".url))
        Webpage(onDismiss: {})
    }
}
