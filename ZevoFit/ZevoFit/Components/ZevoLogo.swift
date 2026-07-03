//
//  ZevoLogo.swift
//  ZevoFit
//

import SwiftUI

struct ZevoLogo: View {

    var size: CGFloat = 90

    var body: some View {

        ZStack {

            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            AppColors.primary,
                            AppColors.primary.opacity(0.8)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: size, height: size)

            Image(systemName: "figure.strengthtraining.traditional")
                .font(.system(size: size * 0.42))
                .foregroundStyle(.white)

        }
        .shadow(color: AppColors.primary.opacity(0.3), radius: 12, y: 6)

    }

}

#Preview {
    ZevoLogo()
}
