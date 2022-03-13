//
//  EventTask.swift
//  DatePlanner
//
//  Created by kimhyungyu on 2022/03/13.
//

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
