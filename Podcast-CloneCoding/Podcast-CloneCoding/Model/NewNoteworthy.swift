//
//  NewNoteworthy.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import Foundation

struct NewNoteworthy: Identifiable {
    let id = UUID()
    let thumbnailImage: String
    let title: String
    let caster: String
}

