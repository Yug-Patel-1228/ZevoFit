//
//  GlassCard.swift
//  ZevoFit
//
//  Created by Yug  on 7/3/26.
//

import SwiftUI

struct GlassCard<Content: View>: View {

    @ViewBuilder var content: Content

    var body: some View {

        content
            .padding(AppSpacing.medium)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .clipShape(
                RoundedRectangle(cornerRadius: 24)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.white.opacity(0.15), lineWidth: 1)
            )

    }

}

#Preview {

    GlassCard {

        Text("ZevoFit")

    }

}
