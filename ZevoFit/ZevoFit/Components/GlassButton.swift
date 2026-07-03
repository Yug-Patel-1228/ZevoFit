//
//  GlassButton.swift
//  ZevoFit
//

import SwiftUI

struct GlassButton: View {

    let title: String
    let systemImage: String
    let action: () -> Void

    var body: some View {

        Button(action: action) {

            HStack(spacing: 10) {

                Text(title)
                    .font(.headline)

                Image(systemName: systemImage)

            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .foregroundStyle(.white)
            .background(
                LinearGradient(
                    colors: [
                        AppColors.primary,
                        AppColors.primary.opacity(0.8)
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .clipShape(
                RoundedRectangle(cornerRadius: 18)
            )

        }

    }

}

#Preview {

    GlassButton(
        title: "Get Started",
        systemImage: "arrow.right"
    ) {

    }

}
