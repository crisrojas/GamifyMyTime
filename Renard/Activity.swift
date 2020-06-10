//
//  Activity.swift
//  Renard
//
//  Created by Cristian Rojas on 10/06/2020.
//  Copyright © 2020 Cristian Rojas. All rights reserved.
//

import Foundation

class Activity {
    var name: String!
    var goal: Int!
    var count: Int!
    
    init(name: String, goal: Int, count: Int) {
        self.name = name
        self.goal = goal
        self.count = count
    }
}
