//
//  SenatorRow.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.


import SwiftUI

struct SenatorRow: View {
    var senator: Senator
    
    var body: some View {
        HStack {
            senator.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack (alignment: .leading) {
                Text(senator.name)
                    .font(.headline)
                HStack {
                    Text(senator.state_name)
                    .font(.subheadline)
                    Text(senator.party.capitalized)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct SenatorRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SenatorRow(senator: senatorData[0])
            SenatorRow(senator: senatorData[14])
            SenatorRow(senator: senatorData[22])
            SenatorRow(senator: senatorData[37])
            SenatorRow(senator: senatorData[99])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
