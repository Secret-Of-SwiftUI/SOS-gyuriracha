//
//  FeaturedChannelsItem.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/18.
//

import SwiftUI

struct FeaturedChannelsItem: View {
    
    // MARK: - Properties
    
    var featuredChannel: FeaturedChannel
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(featuredChannel.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(height: 245)
                .clipped()
            HStack(alignment: .center) {
//                Spacer(minLength: 15)
                Text(featuredChannel.detail)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
//                Spacer(minLength: 15)
            }
            .frame(height: 85)
        }
        .frame(width: 250, height: 330)
        .background(featuredChannel.themeColor)
    }
}

// MARK: - Preview

struct FeaturedChannelsItem_Previews: PreviewProvider {
    static let featuredChannels = ModelData().featuredChannels
    static var previews: some View {
        FeaturedChannelsItem(featuredChannel: featuredChannels[0])
    }
}
