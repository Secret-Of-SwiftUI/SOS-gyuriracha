//
//  FeaturedChannelsRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct FeaturedChannelsRow: View {
    
    // MARK: - Properties
    
    var featuredChannels: [FeaturedChannels]
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            VStack {
                Text("Featured Channels")
                    .font(.title2)
                    .bold()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                ForEach(featuredChannels) { featuredChannels in
                    VStack {
                        Image(featuredChannels.thumbnail)
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary, lineWidth: 0.2))
                        Text(featuredChannels.detail)
                    }
                    .frame(height: 500)
                    .cornerRadius(5)
                }
            }
        }
    }
}
}

struct FeaturedChannelsRow_Previews: PreviewProvider {
    static let featuredChannels = ModelData().featuredChannels
    
    static var previews: some View {
        FeaturedChannelsRow(featuredChannels: featuredChannels)
    }
}
