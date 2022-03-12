//
//  Story.swift
//  AboutMe
//
//  Created by kimhyungyu on 2022/03/13.
//

import Foundation

struct Story {
    
    let pages: [StoryPage]

    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}

struct StoryPage {
    let text: String
    
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

/// a choice readers can make while reading a story.
struct Choice {
    let text: String
    let destination: Int
}
