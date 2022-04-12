//
//  FeaturedRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct FeaturedRow: View {
    
    // MARK: - Properties
    
    struct FeaturedData: Hashable, Identifiable {
        var id: Int
        var featuredCategory: String
        var featuredTitle: String
        var featuredSubtitle: String
    }
    
    var featuredData: [FeaturedData]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 10) {
                ForEach(featuredData) { featured in
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
    static var previews: some View {
        FeaturedRow(featuredData: [FeaturedRow.FeaturedData(id: 0, featuredCategory: "FEATURED PODCAST", featuredTitle: "댓글 읽어주는 기자들", featuredSubtitle: "안에서 보는 미디어"),
                                   FeaturedRow.FeaturedData(id: 1, featuredCategory: "FEATURED", featuredTitle: "Speak English with ESLPod.com - ...", featuredSubtitle: "Listen in to speak English fast")])
    }
}
