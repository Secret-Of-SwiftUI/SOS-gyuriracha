//
//  ModelData.swift
//  Landmarks
//
//  Created by kimhyungyu on 2022/02/15.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    // An observable object needs to publish any changes to its data, so that its subscribers can pick up the change.
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    
    // Q.why not use @Publised?
    // A.you’ll never modify hike data after initially loading it, you don’t need to mark it with the @Published attribute.
    var hikes: [Hike] = load("hikeData.json")
    // user profile that persists even after the user dismisses the profile view.
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter {$0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
