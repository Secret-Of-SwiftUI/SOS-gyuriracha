//
//  FeaturedChannelsItem.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/18.
//

import SwiftUI

struct FeaturedChannelsItem: View {
    var featuredChannel: FeaturedChannel
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Image(featuredChannel.thumbnail)
                .resizable()
                .scaledToFill()
                Text(featuredChannel.detail)
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .frame(height: 100)
        }
        .background(featuredChannel.themeColor)
    }
}

struct FeaturedChannelsItem_Previews: PreviewProvider {
    static let featuredChannels = ModelData().featuredChannels
    static var previews: some View {
        FeaturedChannelsItem(featuredChannel: featuredChannels[0])
    }
}
