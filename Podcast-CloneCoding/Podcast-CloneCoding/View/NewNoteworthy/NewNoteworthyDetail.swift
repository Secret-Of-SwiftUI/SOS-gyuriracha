//
//  NewNoteworthyDetail.swift
//  Podcast-CloneCoding
//
//  Created by kimhyungyu on 2022/05/17.
//

import SwiftUI

struct NewNoteworthyDetail: View {
//    init(newNoteworthy: NewNoteworthy) {
//        self.newNoteworthy = newNoteworthy
//        UINavigationBar.appearance().backgroundColor = .clear
//    }
    
    // MARK: - Properties
    
    var newNoteworthy: NewNoteworthy
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    // MARK: - View Life Cycle
    
    var body: some View {
        if #available(iOS 15.0, *) {
            List {
                VStack {
                    Color(red: 0, green: 100, blue: 0 )
                        .frame(height: 500)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .refreshable {
                print("refreshable")
            }
//            .edgesIgnoringSafeArea(.top)
            .navigationTitle(newNoteworthy.title)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.backward.circle.fill")
                    })
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "ellipsis.circle.fill")
                    })
                }
            }
            .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                if(value.startLocation.x < 20 && value.translation.width > 100) {
                    self.presentationMode.wrappedValue.dismiss()
                }
            }))
            .foregroundColor(.gray)
        } else {
            // Fallback on earlier versions
        }
    }
}

// MARK: - Previews

struct NewNoteworthyDetail_Previews: PreviewProvider {
    static let newNoteworthys = ModelData().newNoteworthy
    
    static var previews: some View {
        NewNoteworthyDetail(newNoteworthy: newNoteworthys[0])
    }
}
