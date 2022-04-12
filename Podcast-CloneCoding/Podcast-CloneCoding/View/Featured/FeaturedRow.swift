//
//  FeaturedRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct FeaturedRow: View {
    
    // MARK: - Properties
    
    var featured: [Featured]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 10) {
                ForEach(featured) { featured in
                    VStack(alignment: .leading) {
                        Divider()
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
                        Spacer(minLength: 30)
                    }
                }
            }
        }
        .frame(height: 245)
    }
}

struct FeaturedRow_Previews: PreviewProvider {
    static let featured = ModelData().featured
    
    static var previews: some View {
        FeaturedRow(featured: featured)
    }
}
