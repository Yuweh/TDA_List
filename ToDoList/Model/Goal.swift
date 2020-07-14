//
//  Goal.swift
//  ToDoList
//
//  Created by Francis Yuweh on 7/14/20.
//  Copyright © 2020 Francis XiApps. All rights reserved.
//

import Foundation

enum GoalType: Int {
    case short
    case long
}

struct Goal {
    let taskTitle: String
    let goalType: GoalType
    let goalDetails: String
    let goalComplete: Bool
}