//
//  GroupModel.swift
//  Group Lunch Coordinator
//
//  Created by John McCants on 6/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct Group: Codable, Equatable {
    var name : String
    var totalMembers : Int
    var joined : Bool
    
    init(name: String, totalMembers : Int, joined: Bool) {
        self.name = name
        self.totalMembers = totalMembers
        self.joined = joined
        
    }
}
