//
//  SecondMenu.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/26.
//

import SwiftUI

struct SecondMenu: View {
    var body: some View {
        Button(action: {
                print("Play Next")
            }) {
                Label("Play Next", systemImage: "text.insert")
            }
        Button(action: {
                 print("Play Last")
            }) {
                Label("Play Last", systemImage: "text.append")
            }
        Button(action: {
                print("Go to Show")
            }) {
                Label("Go to Show", systemImage: "airplayaudio")
            }
        Button(action: {
                print("Save Episode")
            }) {
                Label("Save Episode", systemImage: "bookmark")
            }
    }
}

struct SecondMenu_Previews: PreviewProvider {
    static var previews: some View {
        SecondMenu()
    }
}
