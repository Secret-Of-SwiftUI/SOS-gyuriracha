//
//  FeaturedChannels.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import Foundation
import SwiftUI

struct FeaturedChannel: Identifiable {
    let id = UUID()
    let thumbnail: String
    let detail: String
    let themeColor: Color
}
