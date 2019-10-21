//
//  SenatorDetail.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

struct SenatorDetail: View {
    var senator: Senator
    
    @State private var showWebsiteModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                CircleImage(image: senator.image)
                    .offset(y: 0)
                    .padding(.bottom, 0)
            VStack(alignment: .leading) {
                Text(senator.name)
                        .font(.title)
                        .fontWeight(.bold)

                    HStack(alignment: .top) {
                        Text("\(senator.entered_office) to \(senator.term_end)")
                            .font(.subheadline)
                        Spacer()
                        Text("\(senator.state_code)-\(senator.party.capitalized)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    }
                }
                .padding()
                Text(senator.biography)
                    .font(.body).padding()
            }
        }
        .navigationBarTitle(Text(senator.name), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.showWebsiteModal = true
        }) {
            Image(systemName: "globe")
                .imageScale(.large)
        }).sheet(isPresented: self.$showWebsiteModal) {
            NavigationView {
                Webpage(request: URLRequest(url: self.senator.website.url))
                .navigationBarTitle("\(self.senator.website)")
                .navigationBarItems(leading: Button(action: {
                    self.showWebsiteModal = false
                })
                    {
                        Text("Done")
                        .fontWeight(.bold)
                    }
                )
            }
        }
    }
}

struct SenatorDetail_Previews: PreviewProvider {
    static var previews: some View {
        SenatorDetail(senator: senatorData[66])
    }
}
