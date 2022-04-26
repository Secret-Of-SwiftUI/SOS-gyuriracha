//
//  ThrdMenu.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/26.
//

import SwiftUI

struct ThrdMenu: View {
    var body: some View {
        Button(action: {
            print("Report a Concern")
        }) {
            Label("Report a Concern", systemImage: "exclamationmark.bubble")
        }
        Button(action: {
            print("Copy Link")
        }) {
            Label("Copy Link", systemImage: "link")
        }
        
        Button(action: {
            print("Share Episode...")
        }) {
            Label("Share Episode...", systemImage: "square.and.arrow.up")
        }
        
    }
}

struct ThrdMenu_Previews: PreviewProvider {
    static var previews: some View {
        ThrdMenu()
    }
}
