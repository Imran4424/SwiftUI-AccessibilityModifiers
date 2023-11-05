//
//  ReduceTransparencyView.swift
//  AccessibilityModifiers
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct ReduceTransparencyView: View {
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
    
    var body: some View {
        Text("Am I transparent?")
            .padding()
            .background(reduceTransparency ? .black : .black.opacity(0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

#Preview {
    ReduceTransparencyView()
}
