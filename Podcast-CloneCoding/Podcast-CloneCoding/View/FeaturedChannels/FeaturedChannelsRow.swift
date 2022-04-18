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
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            VStack {
                Text("Featured Channels")
                    .font(.title2)
                    .bold()
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            ScrollView(.horizontal, showsIndicators: false) {
                VStack {
                    HStack(spacing: 12) {
                        Spacer(minLength: 0)
                        ForEach(featuredChannels) { featuredChannel in
                            FeaturedChannelsItem(featuredChannel: featuredChannel)
                                .frame(width: 250, height: 350, alignment: .leading)
                                .border(.gray, width: 0.2)
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 2)
                        }
                        Spacer(minLength: 0)
                    }
                    Spacer()
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
