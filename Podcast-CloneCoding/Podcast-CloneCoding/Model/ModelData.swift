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
}
