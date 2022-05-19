//
//  NewNoteworthyRow.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/04/12.
//

import SwiftUI

struct NewNoteworthyRow: View {
    
    // MARK: - Properties
    
    var newNoteworthys: [NewNoteworthy]
    
    // MARK: - View
    
    var body: some View {
        VStack {
            Divider()
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            HStack {
                Text("New & Noteworthy")
                    .font(.title2)
                    .bold()
                Spacer()
                Button("See All") {
                    print("touch NewNoteworthyRow `See All`")
                }
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 12) {
                    Spacer()
                    ForEach(newNoteworthys) { newNoteworthy in
                        // TODO: - link to NewNoteworthyDetail view.
//                        NavigationLink {
//                            NewNoteworthyDetail()
//                        } label: {
                            NewNoteworthyItem(newNoteworthy: newNoteworthy)
//                        }
                            .contextMenu {
                                Button(action: {}) {
                                    Label("Follow Show", systemImage: "plus.circle")
                                }
                                Button(action: {}) {
                                    Label("Go to Show", systemImage: "airplayaudio")
                                }
                                Button(action: {}) {
                                    Label("Share Show", systemImage: "square.and.arrow.up")
                                }
                                Button(action: {}) {
                                    Label("Copy Link", systemImage: "link")
                                }
                                Button(action: {}) {
                                    Label("Report a Concern", systemImage: "exclamationmark.bubble")
                                }
                            }
                    }
                    Spacer()
                }
            }
            Spacer()
        }
    }
}

struct NewNoteworthyRow_Previews: PreviewProvider {
    static let newNoteworthys = ModelData().newNoteworthy
    
    static var previews: some View {
        NewNoteworthyRow(newNoteworthys: newNoteworthys)
    }
}
