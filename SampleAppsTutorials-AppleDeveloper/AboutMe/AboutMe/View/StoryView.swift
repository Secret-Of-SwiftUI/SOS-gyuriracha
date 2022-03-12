//
//  StoryView.swift
//  AboutMe
//
//  Created by kimhyungyu on 2022/03/12.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
        .navigationViewStyle(.stack)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
