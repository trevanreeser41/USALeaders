//
//  Leader.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/16/19.
//  Copyright © 2019 Student. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Leader: Hashable, Codable, Identifiable {
    var id: Int
    var full_name: String
    var birth_year: Int
    var death_year: Int?
    var took_office: String
    var left_office: String?
    var party: String
    var image_name: String
    var biography: String
}

extension Leader {
   var image: Image {
       ImageStore.shared.image(name: image_name)
   }
}
