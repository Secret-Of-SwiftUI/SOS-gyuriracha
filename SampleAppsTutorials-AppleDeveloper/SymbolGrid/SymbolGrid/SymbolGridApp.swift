//
//  SymbolGridApp.swift
//  SymbolGrid
//
//  Created by kimhyungyu on 2022/03/15.
//

import SwiftUI

@main
struct SymbolGridApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SymbolGrid()
            }
            .navigationViewStyle(.stack)
        }
    }
}
