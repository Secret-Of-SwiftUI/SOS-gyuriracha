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
        VStack {
            
        }
    }
}

struct FeaturedChannelsItem_Previews: PreviewProvider {
    static let featuredChannels = ModelData().featuredChannels
    static var previews: some View {
        FeaturedChannelsItem(featuredChannel: featuredChannels[0])
    }
}
