//
//  Featured.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import Foundation

struct Featured: Hashable, Identifiable {
    let id = UUID()
    let thumbnailImage: String
    let featuredCategory: String
    let featuredTitle: String
    let featuredSubtitle: String
}
