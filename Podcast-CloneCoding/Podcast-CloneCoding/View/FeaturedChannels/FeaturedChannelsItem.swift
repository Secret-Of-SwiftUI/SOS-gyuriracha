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
        VStack(alignment: .center, spacing: 0) {
            Image(featuredChannel.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(height: 245)
                .clipped()
            HStack(alignment: .center) {
                Spacer(minLength: 15)
                Text(featuredChannel.detail)
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .foregroundColor(.white)
                Spacer(minLength: 15)
            }
            .frame(height: 85)
        }
        .frame(width: 250, height: 330)
        .background(featuredChannel.themeColor)
    }
}

struct FeaturedChannelsItem_Previews: PreviewProvider {
    static let featuredChannels = ModelData().featuredChannels
    static var previews: some View {
        FeaturedChannelsItem(featuredChannel: featuredChannels[0])
    }
}
