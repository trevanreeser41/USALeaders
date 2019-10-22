//
//  GovernorRow.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//


import SwiftUI

struct GovernorRow: View {
    var governor: Governor

    var body: some View {
        //Governor image and information
        HStack{
            governor.image
            .resizable()
            .frame(width: 50, height: 50)
            VStack( alignment: .leading){
                HStack {
                    Text(governor.name)
                        .bold()
                    Spacer()
                }
                HStack {
                    Text(governor.state_name)
                        .font(.subheadline)
                    Text(governor.party.capitalized)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct GovernorRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GovernorRow(governor: governorData[19])
            GovernorRow(governor: governorData[45])
            GovernorRow(governor: governorData[1])
            GovernorRow(governor: governorData[33])
            GovernorRow(governor: governorData[20])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
