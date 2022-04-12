//
//  Featured.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import Foundation

struct Featured: Hashable, Identifiable {
    var id = UUID()
    var featuredCategory: String
    var featuredTitle: String
    var featuredSubtitle: String
}
