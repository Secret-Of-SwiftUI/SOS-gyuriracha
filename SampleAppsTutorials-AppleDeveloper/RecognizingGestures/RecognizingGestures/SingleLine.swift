//
//  SingleLine.swift
//  RecognizingGestures
//
//  Created by kimhyungyu on 2022/04/16.
//

import SwiftUI

struct SingleLine: View {
    @State var lineStart = CGPoint.zero
    @State var lineEnd = CGPoint.zero
    var lineDrawingGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                lineStart = value.startLocation
                lineEnd = value.location
            }
            .onEnded { value in
                lineEnd = value.location
            }
    }
    
    var body: some View {
        VStack {
            Text("Touch and drag to make a line")
            Spacer()
            Path { path in
                path.move(to: lineStart)
                path.addLine(to: lineEnd)
            }
            .stroke(Color.green, lineWidth: 8.0)
            .contentShape(Rectangle())
            .gesture(lineDrawingGesture)
        }
        .navigationTitle("Line Drawing")
        .toolbar {
            Button("Reset") {
                lineStart = .zero
                lineEnd = .zero
            }
        }
    }
}

struct SingleLine_Previews: PreviewProvider {
    static var previews: some View {
        SingleLine()
    }
}
