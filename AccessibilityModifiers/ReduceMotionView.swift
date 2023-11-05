//
//  ReduceMotionView.swift
//  AccessibilityModifiers
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

// for reducing code duplication
func withOptionalAnimation<Result> (animation: Animation? = .default, body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct ReduceMotionView: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale = 1.0
    
    var body: some View {
        Text("Reduce Motion")
            .scaleEffect(scale)
            .onTapGesture {
                // for reducing code duplication
                withOptionalAnimation {
                    scale *= 1.5
                }
            }
        // this is manual
//            .onTapGesture {
//                if reduceMotion {
//                    scale *= 1.5
//                } else {
//                    withAnimation {
//                        scale *= 1.5
//                    }
//                }
//            }
    }
}

#Preview {
    ReduceMotionView()
}
