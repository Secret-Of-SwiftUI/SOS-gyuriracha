//
//  FirstMenu.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/26.
//

import SwiftUI

struct FirstMenu: View {
    var body: some View {
        Button(action: {
            print("Download Episode")
        }) {
            Label("Download Episode", systemImage: "arrow.down.circle")
        }
        Button(action: {
            print("Play Episode")
        }) {
            Label("Play Episode", systemImage: "play")
        }
    }
}

struct FirstMenu_Previews: PreviewProvider {
    static var previews: some View {
        FirstMenu()
    }
}
