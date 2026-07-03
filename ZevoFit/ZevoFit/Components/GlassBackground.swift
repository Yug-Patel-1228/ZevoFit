//
//  GlassBackground.swift
//  ZevoFit
//

import SwiftUI

struct GlassBackground: View {

    var body: some View {

        LinearGradient(
            colors: [
                Color.blue.opacity(0.15),
                Color.clear,
                Color.green.opacity(0.08)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()

    }

}

#Preview {
    GlassBackground()
}
