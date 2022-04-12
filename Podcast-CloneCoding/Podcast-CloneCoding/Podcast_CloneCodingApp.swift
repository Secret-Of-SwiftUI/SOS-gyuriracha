//
//  Podcast_CloneCodingApp.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/10.
//

import SwiftUI

@main
struct Podcast_CloneCodingApp: App {
    
    // MARK: - Properties
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            PodcastTab()
                .environmentObject(modelData)
        }
    }
}
