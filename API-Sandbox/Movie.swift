//
//  Movie.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/24/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

//Create a struct to retrieve select movie information
//We use a struct because we do not plan to update existing information
struct Movie {
    let name: String
    let rightsOwner: String
    let price: String
    let link: String
    let releaseDate: String
    
    init(json: JSON) {
        self.name = json["im:name"]["label"].stringValue
        self.rightsOwner = json["rights"]["label"].stringValue
        self.price = json["im:price"]["label"].stringValue
        self.link = json["link"]["href"].stringValue
        self.releaseDate = json["im:releaseDate"]["attributes"]["label"].stringValue
        
    }
}
