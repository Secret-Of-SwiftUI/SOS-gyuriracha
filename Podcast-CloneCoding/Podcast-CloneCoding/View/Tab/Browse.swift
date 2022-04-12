//
//  Browse.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct Browse: View {
    
    // MARK: - Properties
    
    private let coloumns: [GridItem] = [
        GridItem(.flexible())
    ]
//    ["", "최신 및 추천 항목", "추천 채널", "인기 프로그램", "인기 에피소드", "새로운 발견", "많이 듣는 프로그램", "어린이 세상", "뉴스 따라잡기", "코미디", "Art", "카테고리 둘러보기", "팟캐스트 바로가기"]
    
    // MARK: - View
    
    var body: some View {
        NavigationView {
            LazyVGrid(columns: coloumns) {
                FeaturedRow(featuredData: [FeaturedRow.FeaturedData(id: 0, featuredCategory: "FEATURED PODCAST", featuredTitle: "댓글 읽어주는 기자들", featuredSubtitle: "안에서 보는 미디어"),
                                           FeaturedRow.FeaturedData(id: 1, featuredCategory: "FEATURED", featuredTitle: "Speak English with ESLPod.com - ...", featuredSubtitle: "Listen in to speak English fast"),
                                           FeaturedRow.FeaturedData(id: 2, featuredCategory: "FEATURED CHANNEL", featuredTitle: "신사임당의 돈 얘기 하는 곳", featuredSubtitle: "매일 더하는 경제 지식")])
                FeaturedChannelsRow()
                TopShowsRow()
                TopEpisodesRow()
                FindYourNewFavouriteRow()
                SubscribeFavoritesRow()
                KidsCornerRow()
                CatchUpOnTheNewsRow()
                ComedyRow()
                //                ArtRow()
                
                //                BrowseByCategoryRow()
                //                PodcastsQuickLinksRow()
            }
            .listStyle(.inset)
            .navigationTitle("Browse")
            
        }
    }
}

// MARK: - Previews

struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Browse()
    }
}
