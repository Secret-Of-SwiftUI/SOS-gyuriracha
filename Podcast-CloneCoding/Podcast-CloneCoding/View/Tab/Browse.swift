//
//  Browse.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct Browse: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var modelData: ModelData
    
    private let coloumns: [GridItem] = [
        GridItem(.flexible())
    ]
//    ["", "최신 및 추천 항목", "추천 채널", "인기 프로그램", "인기 에피소드", "새로운 발견", "많이 듣는 프로그램", "어린이 세상", "뉴스 따라잡기", "코미디", "Art", "카테고리 둘러보기", "팟캐스트 바로가기"]
    
    // MARK: - View
    
    var body: some View {
        NavigationView {
            LazyVGrid(columns: coloumns) {
                FeaturedRow(featured: modelData.featured)
                NewNoteworthyRow(newNoteworthy: modelData.newNoteworthy)
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
            .environmentObject(ModelData())
    }
}
