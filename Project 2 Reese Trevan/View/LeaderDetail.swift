//
//  ContentView.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/15/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

struct LeaderDetail: View {
    var leader: Leader
    
    @State private var showWebsiteModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                CircleImage(image: leader.image)
                    .offset(y: 0)
                    .padding(.bottom, 0)
            VStack(alignment: .leading) {
                    Text(leader.full_name)
                        .font(.title)
                        .fontWeight(.bold)

                    HStack(alignment: .top) {
                        Text("\(leader.took_office) to \(leader.left_office ?? "present")")
                            .font(.subheadline)
                        Spacer()
                        Text(leader.party)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    }
                }
                .padding()
                Text(leader.biography)
                    .font(.body).padding()
            }
        }
        .navigationBarTitle(Text(leader.full_name), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.showWebsiteModal = true
        }) {
            Image(systemName: "globe")
                .imageScale(.large)
        }).sheet(isPresented: self.$showWebsiteModal) {
            Webpage() {
                self.showWebsiteModal = false
            }
        }
    }
}

struct LeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        LeaderDetail(leader: leaderData[15])
    }
}
