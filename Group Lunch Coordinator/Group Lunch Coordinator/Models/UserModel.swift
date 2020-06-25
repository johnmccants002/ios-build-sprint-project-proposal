//
//  UserModel.swift
//  Group Lunch Coordinator
//
//  Created by B$hady on 6/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import UIKit

struct User {
    var name: String
    var userVote: Bool
    var userLocation: String
    var userGroup: String
}

struct TimeFrameGroup {
    var users: [User] = []
    
}

struct Location {
    let name: String
    var rank: Int = 1
}


