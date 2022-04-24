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
            Spacer()
            HStack {
                Image(topEpisode.thumbnail)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(5)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.secondary, lineWidth: 0.2))
                Spacer(minLength: 15)
                Text("\(index)")
                    .font(.headline)
                Spacer(minLength: 15)
                VStack(alignment: .leading) {
                    Text(topEpisode.title)
                        .font(.body )
                        .lineLimit(2)
                        .frame(height: 45)
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
            Spacer()
            Divider()
        }
        .frame(width: 340, height: 100)
    }
}

// MARK: - Preview

struct TopEpisodesItem_Previews: PreviewProvider {
    static let topEpisodes = ModelData().topEpisodes
    
    static var previews: some View {
        TopEpisodesItem(topEpisode: topEpisodes[0], index: 1)
    }
}
