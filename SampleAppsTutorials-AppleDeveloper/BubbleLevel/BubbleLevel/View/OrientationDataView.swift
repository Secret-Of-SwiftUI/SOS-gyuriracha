//
//  OrientationDataView.swift
//  BubbleLevel
//
//  Created by kimhyungyu on 2022/03/21.
//

import SwiftUI

// roll is the degree of left and right tilt.
// pitch is the degree of forward and backward tilt.
struct OrientationDataView: View {
    @EnvironmentObject var detector: MotionDetector

    var rollString: String {
        detector.roll.describeAsFixedLengthString()
    }

    var pitchString: String {
        detector.pitch.describeAsFixedLengthString()
    }

    var body: some View {
        VStack {
            Text("Horizontal: " + rollString)
                .font(.system(.body, design: .monospaced))
            Text("Vertical: " + pitchString)
                .font(.system(.body, design: .monospaced))
        }
    }
}

struct OrientationDataView_Previews: PreviewProvider {
    @StateObject static private var motionDetector = MotionDetector(updateInterval: 0.01).started()
    
    static var previews: some View {
        OrientationDataView()
            .environmentObject(motionDetector)
    }
}
