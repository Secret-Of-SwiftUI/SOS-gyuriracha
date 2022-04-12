//
//  PodcastTab.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct PodcastTab: View {
    
    // MARK: - Properties
    
    @State private var selection: Tab = .Browse
    
    enum Tab {
        case ListenNow
        case Browse
        case Library
        case Search
    }
    
    // MARK: - View
    
    var body: some View {
        
        TabView(selection: $selection) {
            Browse()
                .tabItem {
                    Label("ListenNow", systemImage: "play.circle.fill")
                }
            Browse()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2.fill")
                }
            Browse()
                .tabItem {
                    Label("Library", systemImage: "square.stack.fill")
                }
            Browse()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        // TODO: - tint 사용하기
//        .tint(Color(red: 0.416, green: 0.161, blue: 0.812))
        // available iOS 15.4 {
         .accentColor(Color(red: 0.416, green: 0.161, blue: 0.812))
    }
}

// MARK: - Previews
                
struct PodcastTab_Previews: PreviewProvider {
    static var previews: some View {
        PodcastTab()
    }
}
