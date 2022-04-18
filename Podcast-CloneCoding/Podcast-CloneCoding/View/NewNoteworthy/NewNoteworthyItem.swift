//
//  NewNoteworthyItem.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/18.
//

import SwiftUI

struct NewNoteworthyItem: View {
    
    // MARK: - Properties
    
    var newNoteworthy: NewNoteworthy
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(newNoteworthy.thumbnailImage)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 160)
                .clipped()
                .cornerRadius(5)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.secondary, lineWidth: 0.2))
            Text(newNoteworthy.title)
                .font(.subheadline)
                .lineLimit(1)
            Text(newNoteworthy.caster)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(1) 
        }
        .frame(width: 160, height: 210, alignment: .topLeading)
    }
}

struct NewNoteworthyItem_Previews: PreviewProvider {
    static let newNoteworthy = ModelData().newNoteworthy
    
    static var previews: some View {
        NewNoteworthyItem(newNoteworthy: newNoteworthy[0])
    }
}
