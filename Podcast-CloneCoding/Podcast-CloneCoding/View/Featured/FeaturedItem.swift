//
//  FeaturedItem.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/18.
//

import SwiftUI

struct FeaturedItem: View {
    
    // MARK: - Properties
    
    var featured: Featured
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text(featured.featuredCategory)
                .font(.caption)
                .foregroundColor(.podcastMainColor)
                .bold()
                .lineLimit(1)
            Text(featured.featuredTitle)
                .font(.title2)
                .lineLimit(1)
            Text(featured.featuredSubtitle)
                .font(.title2)
                .foregroundColor(.secondary)
                .lineLimit(1)
            Image("featuredImage1")
                .resizable()
                .scaledToFill()
                .frame(width: 320, height: 220)
                .clipped()
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.secondary, lineWidth: 0.2))
        }
        .frame(width: 320, height: 310)
    }
}

// MARK: - Preview

struct FeaturedItem_Previews: PreviewProvider {
    static let featured = ModelData().featured
    
    static var previews: some View {
        FeaturedItem(featured: featured[0])
    }
}
