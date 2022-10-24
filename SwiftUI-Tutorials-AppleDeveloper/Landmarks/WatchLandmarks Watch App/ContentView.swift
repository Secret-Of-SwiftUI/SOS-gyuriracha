//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by kimhyungyu on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
