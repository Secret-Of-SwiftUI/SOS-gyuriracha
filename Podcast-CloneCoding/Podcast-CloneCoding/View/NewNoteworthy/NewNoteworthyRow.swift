//
//  NewNoteworthyRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct NewNoteworthyRow: View {
    
    // MARK: - Properties
    
    var newNoteworthy: [NewNoteworthy]
    
    // MARK: - View
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                Text("New & Noteworthy")
                    .font(.title2)
                    .bold()
                Spacer()
                Button("See All") {
                    print("touch NewNoteworthyRow `See All`")
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(newNoteworthy) { newNoteworthy in
                        VStack(alignment: .leading) {
                            Image(newNoteworthy.thumbnailImage)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(5)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.secondary, lineWidth: 0.2))
                            Text(newNoteworthy.title)
                                .font(.subheadline)
                            Text(newNoteworthy.caster)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .frame(height: 250)
        }
    }
}

struct NewNoteworthyRow_Previews: PreviewProvider {
    static let newNoteworthy = ModelData().newNoteworthy
    
    static var previews: some View {
        NewNoteworthyRow(newNoteworthy: newNoteworthy)
    }
}
