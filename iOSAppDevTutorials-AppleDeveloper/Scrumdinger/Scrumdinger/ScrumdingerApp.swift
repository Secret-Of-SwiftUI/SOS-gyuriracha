//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by kimhyungyu on 2022/03/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
