//
//  DifferentiateWithoutColorView.swift
//  AccessibilityModifiers
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct DifferentiateWithoutColorView: View {
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
    
    var body: some View {
        HStack {
            if differentiateWithoutColor {
                Image(systemName: "checkmark.circle")
            }
            
            Text("Success")
        }
        .padding()
        .background(differentiateWithoutColor ? .black : .green)
        .foregroundColor(.white)
        .clipShape(Capsule())
    }
}

#Preview {
    DifferentiateWithoutColorView()
}
