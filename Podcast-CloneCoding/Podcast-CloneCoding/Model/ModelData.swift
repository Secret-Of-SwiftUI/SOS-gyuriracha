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
        FeaturedChannel(thumbnail: "FeaturedChannelsImage1", detail: "정신과 의사들의 진짜 정신과 이야기"),
        FeaturedChannel(thumbnail: "featuredChannelsImage2", detail: """
                                                                어른이 되면 복잡한 문제도 알아서 척척 해결할 줄 알았다!
                                                                그런데, 막상 세상에 나와 보니 모든 게 내 마음처럼 풀리지 않는다?!
                                                                """),
        FeaturedChannel(thumbnail: "featuredChannelsImage3", detail: "구독자 130만 명에 육박하는 경제 분야 최고의 유튜버 '신사임당'~ 하루하루 열심히 살아가는 사람들의 이야기를 전합니다."),
        FeaturedChannel(thumbnail: "featuredChannelsImage4", detail: "Subscribe now for 2 free months of unique and immersive stories")
    ]
}
