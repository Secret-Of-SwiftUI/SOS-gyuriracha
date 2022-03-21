//
//  BubbleLevelApp.swift
//  BubbleLevel
//
//  Created by kimhyungyu on 2022/03/21.
//

import SwiftUI

@main
struct BubbleLevelApp: App {
    @StateObject private var motionDetector = MotionDetector(updateInterval: 0.01)

    var body: some Scene {
        WindowGroup {
            LevelView()
                .environmentObject(motionDetector)
        }
    }
}
