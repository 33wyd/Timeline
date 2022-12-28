//
//  PlannedTask.swift
//  Timeline
//
//  Created by Jason Liu on 2022/12/27.
//

import Foundation

struct PlannedTask: Recordable {
    var beginTime: Date
    var endTime: Date
    var taskCategoryName: String
    var id: Int
}
