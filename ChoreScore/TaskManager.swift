//
//  TaskManager.swift
//  ChoreScore
//
//  Created by Melissa Allgeier on 10/27/15.
//  Copyright © 2015 Melissa Allgeier. All rights reserved.
//

import Foundation

private let instance = TaskManager()

class TaskManager {
    
    class var singleton: TaskManager {
        return instance
    }

    let days = [NSMutableArray(),
                NSMutableArray(),
                NSMutableArray(),
                NSMutableArray(),
                NSMutableArray(),
                NSMutableArray(),
                NSMutableArray()]
    
    // days[0] is sundays
}
