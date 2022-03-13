//
//  DatePlannerApp.swift
//  DatePlanner
//
//  Created by kimhyungyu on 2022/03/13.
//

import SwiftUI

@main
struct DatePlannerApp: App {
    // Whenever the data changes, SwiftUI automatically updates all of the views that use (or observe) it.
    @StateObject private var eventData = EventData()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)
        }
    }
}
