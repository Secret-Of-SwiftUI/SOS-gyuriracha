//
//  ContentView.swift
//  Scrumdinger
//
//  Created by kimhyungyu on 2022/03/21.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
        }
        HStack {
            VStack {
                Text("Second Elapsed")
                Label("300", systemImage: "hourglass.bottomhalf.fill")
            }
            VStack {
                Text("Seconds Remaining")
                Label("600", systemImage: "hourglass.tophalf.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
