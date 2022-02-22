//
//  HikeBadge.swift
//  Landmarks
//
//  Created by kimhyungyu on 2022/02/22.
//

import SwiftUI

struct HikeBadge: View {
    var name: String

    var body: some View {
        VStack(alignment: .center) {
            Badge()
            // The badge’s drawing logic produces a result that depends on the size of the frame in which it renders.
            // To ensure the desired appearance, render in a frame of 300 x 300 points.
            // To get the desired size for the final graphic, then scale the rendered result and place it in a comparably smaller frame.
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
