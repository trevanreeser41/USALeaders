//
//  Senator.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Senator: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var state_name: String
    var state_code: String
    var date_of_birth: String
    var entered_office: String
    var term_end: String
    var party: String
    var biography: String
    var photo_url: String
    var website: String
}

extension Senator {
   var image: Image {
       ImageStore.shared.image(name: photo_url)
   }
}

