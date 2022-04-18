//
//  FeaturedChannelsRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct FeaturedChannelsRow: View {
    
    // MARK: - Properties
    
    var featuredChannels: [FeaturedChannel]
    
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
                ForEach(featuredChannels) { featuredChannel in
                    VStack {
                        Image(featuredChannel.thumbnail)
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary, lineWidth: 0.2))
                        Text(featuredChannel.detail)
                    }
                    .frame(width: 200)
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
