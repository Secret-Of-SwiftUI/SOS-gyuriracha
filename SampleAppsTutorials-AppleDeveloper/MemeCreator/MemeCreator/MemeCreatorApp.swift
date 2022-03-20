//
//  MemeCreatorApp.swift
//  MemeCreator
//
//  Created by kimhyungyu on 2022/03/19.
//

import SwiftUI

@main
struct MemeCreatorApp: App {
    @StateObject private var fetcher = PandaCollectionFetcher()
    
    var body: some Scene {
        NavigationView {
            MemeCreator()
                .environmentObject(fetcher)
            
        }
        .navigationViewStyle(.stack)
    }
}
