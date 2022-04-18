//
//  TopShowsItem.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/19.
//

import SwiftUI

struct TopShowsItem: View {
    
    // MARK: - Properties
    
    var topShow: TopShow
    var index: Int
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(topShow.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 160)
                .clipped()
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.secondary, lineWidth: 0.2))
            Text("\(index)")
                .font(.headline)
            Text(topShow.title)
                .font(.subheadline)
                .lineLimit(1)
            Text(topShow.caster)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(1) 
        }
        .frame(width: 160, height: 230, alignment: .topLeading)
    }
}

// MARK: - Preview

struct TopShowsItem_Previews: PreviewProvider {
    static let topShows = ModelData().topShows
    
    static var previews: some View {
        TopShowsItem(topShow: topShows[0], index: 1)
    }
}
