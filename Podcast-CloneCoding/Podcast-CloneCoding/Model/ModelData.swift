//
//  ModelData.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var featured: [Featured] = [
        Featured(thumbnailImage: "FeaturedImage1", featuredCategory: "FEATURED PODCAST", featuredTitle: "댓글 읽어주는 기자들", featuredSubtitle: "안에서 보는 미디어"),
        Featured(thumbnailImage: "FeaturedImage1", featuredCategory: "FEATURED", featuredTitle: "Speak English with ESLPod.com - ...", featuredSubtitle: "Listen in to speak English fast"),
        Featured(thumbnailImage: "FeaturedImage1", featuredCategory: "FEATURED CHANNEL", featuredTitle: "신사임당의 돈 얘기 하는 곳", featuredSubtitle: "매일 더하는 경제 지식")
    ]
    
    @Published var newNoteworthy: [NewNoteworthy] = [
        NewNoteworthy(thumbnailImage: "newNoteworthyImage1", title: "어느 프론트엔드 개발자 성장기", caster: "Seungha Kim"),
        NewNoteworthy(thumbnailImage: "newNoteworthyImage2", title: "Authentic: The Story ....", caster: "iHeartRadio"),
        NewNoteworthy(thumbnailImage: "newNoteworthyImage1", title: "CNN Breaking News Alerts", caster: "CNN"),
        NewNoteworthy(thumbnailImage: "newNoteworthyImage2", title: "Showmance", caster: "RomComPods"),
        NewNoteworthy(thumbnailImage: "newNoteworthyImage1", title: "두려움일까 사랑일까", caster: "서울미술관")
    ]
    
    @Published var featuredChannels: [FeaturedChannel] = [
        FeaturedChannel(thumbnail: "featuredChannelsImage1", detail: "어디서도 들을 수 없었던 정신과 세계의 이야기. 보너스 컨텐츠와 미리 듣기 컨텐츠로 빠져보세요.", themeColor: .init(red: 0.452, green: 0.584, blue: 0.695)),
        FeaturedChannel(thumbnail: "featuredChannelsImage2", detail: "말이 바뀌면 삶이 바뀐다! 말이 아쉬웠던 당신을 위한 대화법의 모든 것. 보너스 컨텐츠로 만나보세요.", themeColor: .init(red: 0.658, green: 0.681, blue: 0.692)),
        FeaturedChannel(thumbnail: "featuredChannelsImage3", detail: "재테크, 부동산, 창업 등. 하루하루 열심히 살아가는 사람들의 이야기를 전합니다.", themeColor: .init(red: 0.595, green: 0.662, blue: 0.699)),
        FeaturedChannel(thumbnail: "featuredChannelsImage4", detail: "Wondery brings a world of entertainment and knowledge to linsteners with character-driven, and so on like this...", themeColor: .init(red: 0.182, green: 0.337, blue: 0.350))
    ]
}
