//
//  TopEpisodesItem.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/19.
//

import SwiftUI

struct TopEpisodesItem: View {
    
    // MARK: - Properties
    
    var topEpisode: TopEpisode
    var index: Int
    
    // MARK: - View
    
    var body: some View {
        VStack {
            HStack {
                Image(topEpisode.thumbnail)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(5)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.secondary, lineWidth: 0.2))
                Spacer()
                Text("\(index)")
                    .font(.headline)
                Spacer()
                VStack(alignment: .leading) {
                    Text(topEpisode.title)
                        .font(.body )
                        .lineLimit(2)
                    HStack {
                        Text(topEpisode.date + "요일 ∙ " + topEpisode.time)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                Spacer()
                Button {
                    print("touch TopEpisodesItem `ellipsis`")
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            Divider()
        }
        .frame(width: 320, height: 100)
    }
}

// MARK: - Preview

struct TopEpisodesItem_Previews: PreviewProvider {
    static let topEpisodes = ModelData().topEpisodes
    
    static var previews: some View {
        TopEpisodesItem(topEpisode: topEpisodes[0], index: 1)
    }
}
