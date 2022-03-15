//
//  Item.swift
//  ImageGallery
//
//  Created by kimhyungyu on 2022/03/15.
//

import Foundation

// use ForEach to construct a collection view, such as a list or grid, SwiftUI wants to uniquely identify each view so it can find adn update them.
struct Item: Identifiable {

    let id = UUID()
    let url: URL

}

extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}
