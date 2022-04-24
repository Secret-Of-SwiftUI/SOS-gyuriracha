//
//  TopEpisode.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/19.
//

import Foundation

struct TopEpisode: Identifiable {
    let id = UUID()
    let thumbnail: String
    let title: String
    let date: String
    let time: String
}
