//
//  ContentView.swift
//  ColorGridApp
//
//  Created by kimhyungyu on 2022/03/14.
//

import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(), count: 3)

     @State private var selectedColor = Color.gray

     let allColors: [Color] = [
         .pink,
         .red,
         .orange,
         .yellow,
         .green,
         .mint,
         .teal,
         .cyan,
         .blue,
         .indigo,
         .purple,
         .brown,
         .gray
     ]

     var body: some View {
         VStack {
             Text("Selected Color")
                 .font(.body)
                 .fontWeight(.semibold)
                 .foregroundColor(selectedColor)
                 .padding(10)
             
             ScrollView {
                 LazyVGrid(columns: columnLayout) {
                     ForEach(allColors, id: \.description) { color in
                         Button {
                             selectedColor = color
                         } label: {
                             RoundedRectangle(cornerRadius: 4.0)
                                 .aspectRatio(1.0, contentMode: ContentMode.fit)
                                 .foregroundColor(color)
                         }
                         .buttonStyle(.plain)
                     }
                 }
             }
         }
         .padding(10)
     }
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
