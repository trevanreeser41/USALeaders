//
//  LeaderRow.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI

struct LeaderRow: View {
    var leader: Leader
    
    var body: some View {
        HStack {
            leader.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack (alignment: .leading) {
                Text(leader.full_name)
                    .font(.headline)
                Text(leader.party)
                    .font(.subheadline)
            }
        }
    }
}

struct LeaderRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LeaderRow(leader: leaderData[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
