//
//  TopShowsRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct TopShowsRow: View {
    
    // MARK: - Properties
    
    var topShows: [TopShow]
    
    // MARK: - View
    
    var body: some View {
        VStack {
            Divider()
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            HStack {
                Text("Top Shows")
                    .font(.title2)
                    .bold()
                Spacer()
                Button("See All") {
                    print("touch TopShowsRow `See All`")
                }
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 12) {
                    Spacer()
                    // this code can hide warning.
//                    ForEach(0..<topShows.count, id: \.self) { index in
                    ForEach(0..<topShows.count) { index in
                        TopShowsItem(topShow: topShows[index], index: index + 1)
                    }
                    Spacer()
                }
            }
            Spacer()
        }
    }
}

// MARK: - Preview

struct TopShowsRow_Previews: PreviewProvider {
    static let topShows = ModelData().topShows
    
    static var previews: some View {
        TopShowsRow(topShows: topShows)
    }
}
