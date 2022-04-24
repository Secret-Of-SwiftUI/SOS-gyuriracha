//
//  TopEpisodesRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct TopEpisodesRow: View {
    
    // MARK: - Properties
    
    var topEpisodes: [TopEpisode]
    let layout: [GridItem] = [
        .init(.adaptive(minimum: 100)),
        .init(.adaptive(minimum: 100)),
        .init(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 10, trailing: 16))
            HStack {
                Text("Top Episodes")
                    .font(.title2)
                    .bold()
                Spacer()
                Button("See All") {
                    print("touch TopEpisodesRow `See All`")
                }
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Spacer(minLength: 16)
                    LazyHGrid(rows: layout, spacing: 0) {
                        ForEach(Array(zip(0..<topEpisodes.count, topEpisodes)), id: \.0) {
                            index, item in
                            TopEpisodesItem(topEpisode: item, index: index + 1)
                        }
                    }
                    .frame(height: 300)
                    Spacer(minLength: 16)
                }
            }
            Spacer()
        }
    }
}

// MARK: - Preview

struct TopEpisodesRow_Previews: PreviewProvider {
    static let topEpisodes = ModelData().topEpisodes
    
    static var previews: some View {
        TopEpisodesRow(topEpisodes: topEpisodes)
    }
}
