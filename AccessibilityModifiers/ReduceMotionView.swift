//
//  ReduceMotionView.swift
//  AccessibilityModifiers
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct ReduceMotionView: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale = 1.0
    
    var body: some View {
        Text("Reduce Motion")
            .scaleEffect(scale)
            .onTapGesture {
                if reduceMotion {
                    scale *= 1.5
                } else {
                    withAnimation {
                        scale *= 1.5
                    }
                }
            }
    }
}

#Preview {
    ReduceMotionView()
}
