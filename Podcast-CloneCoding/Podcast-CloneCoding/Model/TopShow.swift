//
//  TopShow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/19.
//

import Foundation

struct TopShow: Identifiable {
    let id = UUID()
    let thumbnail: String
    let title: String
    let caster: String
}
