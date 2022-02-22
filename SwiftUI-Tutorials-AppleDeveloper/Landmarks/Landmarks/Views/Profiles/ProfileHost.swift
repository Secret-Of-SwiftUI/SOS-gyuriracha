//
//  ProfileHost.swift
//  Landmarks
//
//  Created by kimhyungyu on 2022/02/22.
//

import SwiftUI

/// The ProfileHost view will host both a static, summary view of profile information and an edit mode.
struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                // EditButton controls the same editMode environment value.
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                // modifiers to populate the editor with the correct profile data and update the persistent profile when the user taps the Done button.
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
        // Even though this view doesn’t use a property with the @EnvironmentObject attribute, ProfileSummary, a child of this view, does.
            .environmentObject(ModelData())
    }
}
