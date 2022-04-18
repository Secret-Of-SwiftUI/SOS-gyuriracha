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
            Text(featured.featuredCategory)
                .font(.caption)
                .foregroundColor(.podcastMainColor)
                .bold()
            Text(featured.featuredTitle)
                .font(.title2)
            Text(featured.featuredSubtitle)
                .font(.title2)
                .foregroundColor(.secondary)
            Image("featuredImage1")
                .resizable()
                .scaledToFill()
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.secondary, lineWidth: 0.2))
        }
    }
}

// MARK: - Preview

struct FeaturedItem_Previews: PreviewProvider {
    static let featured = ModelData().featured
    
    static var previews: some View {
        FeaturedItem(featured: featured[0])
    }
}
