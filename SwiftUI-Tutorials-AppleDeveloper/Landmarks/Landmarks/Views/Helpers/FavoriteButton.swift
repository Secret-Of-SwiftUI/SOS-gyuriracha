//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by kimhyungyu on 2022/02/15.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            // The title string that you provide for the button’s label doesn’t appear in the UI when you use the iconOnly label style, but VoiceOver uses it to improve accessibility.
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
