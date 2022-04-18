//
//  FeaturedRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct FeaturedRow: View {
    
    // MARK: - Properties 
    
    var featuredes: [Featured]
    
    // MARK: - View
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                Spacer(minLength: 7)
                ForEach(featuredes) { featured in
                    VStack(alignment: .leading) {
                        Divider()
                        FeaturedItem(featured: featured)
                    }
                }
                Spacer(minLength: 7)
            }
            .frame(height: 250)
        }
    }
}

// MARK: - Preview

struct FeaturedRow_Previews: PreviewProvider {
    static let featuredes = ModelData().featured
    
    static var previews: some View {
        FeaturedRow(featuredes: featuredes)
    }
}
