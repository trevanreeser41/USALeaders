//
//  SenatorDetail.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

struct GovernorDetail: View {
    var governor: Governor
    
    @State var showWebsiteModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                CircleImage(image: governor.image)
                    .offset(y: 0)
                    .padding(.bottom, 0)
            VStack(alignment: .leading) {
                HStack {
                    Text(governor.name)
                            .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Text(governor.state_name)
                        .font(.headline)
                }

                HStack(alignment: .top) {
                    Text("\(governor.entered_office) to \(governor.term_end)")
                        .font(.subheadline)
                    Spacer()
                    Text(governor.party.capitalized)
                    .font(.footnote)
                    .foregroundColor(.gray)
                }
            }
            .padding()
            Text(governor.biography)
                .font(.body).padding()
            }
        }
        .navigationBarTitle(Text(governor.name), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.showWebsiteModal = true
        }) {
            Image(systemName: "globe")
                .imageScale(.large)
        }).sheet(isPresented: self.$showWebsiteModal) {
            NavigationView {
                Webpage(request: URLRequest(url: self.governor.website.url))
                    //self.showWebsiteModal = false
                .navigationBarTitle("\(self.governor.website)")
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

struct GovernorDetail_Previews: PreviewProvider {
    static var previews: some View {
        GovernorDetail(governor: governorData[36])
    }
}
