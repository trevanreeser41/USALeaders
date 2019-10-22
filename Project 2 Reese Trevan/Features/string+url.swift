//
//  string+url.swift
//  Project 2 Reese Trevan
//
//  Created by Student on 10/17/19.
//  Copyright © 2019 Student. All rights reserved.
//


//Load the website values in Webpage.swift
import Foundation
extension String{
    var url: URL{
        if let urlValue = URL(string: self){
            return urlValue
        }
        
        fatalError("Unable to convert URL to string")
    }
}

