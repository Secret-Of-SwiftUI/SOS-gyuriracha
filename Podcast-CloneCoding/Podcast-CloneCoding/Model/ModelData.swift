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
    
    @Published var topShows: [TopShow] = [
        TopShow(thumbnail: "topShowImage1", title: "[여둘톡] 여자 둘이 토크하고 있습니다", caster: "PenUnion"),
        TopShow(thumbnail: "topShowImage2", title: "이진우의 손에 잡히는 경제", caster: "MBC"),
        TopShow(thumbnail: "topShowImage3", title: "송은이&김숙 비밀보장", caster: "컨텐츠랩비보"),
        TopShow(thumbnail: "topShowImage4", title: "[듣똑라]듣다보면 똑똑해지는 라이프", caster: "듣똑라")
    ]
    
    @Published var topEpisodes: [TopEpisode] = [
        TopEpisode(thumbnail: "topepisodeImage1", title: "357회 - *맹신주의* 게으른자들의 위한 자기관리 교본 옥주현의 일침!", date: "수", time: "1시간 39분"),
        TopEpisode(thumbnail: "topepisodeImage2", title: "4/18(월) 중국의 수소, 원전 에너지 정책이 우리에게 줄 영향", date: "월", time: "39분"),
        TopEpisode(thumbnail: "topepisodeImage3", title: "4/17(일) 손에 잡히는 경제 주간 하이라이트", date: "월", time: "42분"),
        TopEpisode(thumbnail: "topepisodeImage4", title: "커피타임 - 안승찬의 또 미국 이야기 '트레이더 조스'", date: "금", time: "58"),
        TopEpisode(thumbnail: "topepisodeImage2", title: "4/15(금) 서울시 용도지역제 개편 계획, 기대와 우려, - 코로나와 전쟁이 끝난다고 공급난이 풀릴까?", date: "수", time: "39"),
        TopEpisode(thumbnail: "topepisodeImage3", title: "456c. 스판덱스 영웅전: 배트맨(1/2) / 홍성갑", date: "토", time: "1시간 3분"),
        TopEpisode(thumbnail: "topepisodeImage4", title: "39]인터뷰/문명특급 밍키PD가 말하는 '초대장 없이 살아남는 법'", date: "수", time: "41분"),
        TopEpisode(thumbnail: "topepisodeImage1", title: "356회 - (경) 비보 7주년 (축) 개국공신 김수용x담배녀 본체 등판", date: "4월 6일", time: "1시간 44분"),
        TopEpisode(thumbnail: "topepisodeImage2", title: "[오늘아침 라이브] 김한진, 김영익 바사가 말하는 '위기의 시대, 우리의 투자'", date: "오늘", time: "1시간 39분")
    ]
}
