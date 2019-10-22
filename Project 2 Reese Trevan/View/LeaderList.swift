//
//  LeaderList.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

//MARK: - Tabs
struct LeaderList: View {
    var body: some View {
        TabView {
            LeaderListView()
                .tabItem {
                   Image(systemName: "list.bullet")
                    .imageScale(.large)
                    Text("Presidents")
            }
            SenatorListView()
                .tabItem {
                   Image(systemName: "list.bullet")
                    .imageScale(.large)
                    Text("Senators")
            }
            GovernorListView()
                .tabItem {
                   Image(systemName: "list.bullet")
                    .imageScale(.large)
                    Text("Governors")
            }
        }
    }
}

//MARK: - Previews
struct LeaderList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro (11-inch)"], id: \.self) { deviceName in
            LeaderList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

//MARK: - Lists
struct LeaderListView: View {
    var body: some View {
        NavigationView {
            List(leaderData) { leader in
                NavigationLink(destination: LeaderDetail(leader: leader)) {
                    LeaderRow(leader: leader)
                }
            }
            .navigationBarTitle(Text("Presidents"))
        }
    }
}

struct SenatorListView: View  {
    var body: some View {
        NavigationView {
            List(senatorData) { senator in
                NavigationLink(destination: SenatorDetail(senator: senator)) {
                    SenatorRow(senator: senator)
                }
            }
            .navigationBarTitle(Text("Senators"))
        }
    }
}

struct GovernorListView: View  {
    var body: some View {
        NavigationView {
            List(governorData) { governor in
                NavigationLink(destination: GovernorDetail(governor: governor)) {
                    GovernorRow(governor: governor)
                }
            }
            .navigationBarTitle(Text("Governors"))
        }
    }
}
