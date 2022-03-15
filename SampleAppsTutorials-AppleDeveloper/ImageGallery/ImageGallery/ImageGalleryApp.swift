//
//  ImageGalleryApp.swift
//  ImageGallery
//
//  Created by kimhyungyu on 2022/03/15.
//

import SwiftUI

@main
struct ImageGalleryApp: App {
    @StateObject var dataModel = DataModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                GridView()
            }
            .environmentObject(dataModel)
            .navigationViewStyle(.stack)
        }
    }
}
