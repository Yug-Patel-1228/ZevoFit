//
//  WaterTrackerCard.swift
//  ZevoFit
//

import SwiftUI

struct WaterTrackerCard: View {

    let water: Double
    let goal: Double

    let onIncrease: () -> Void
    let onDecrease: () -> Void

    var body: some View {

        GlassCard {

            VStack(spacing: AppSpacing.medium) {

                HStack {

                    Image(systemName: AppSymbols.water)
                        .foregroundStyle(.blue)

                    Text("Water Intake")
                        .font(AppTypography.headline)

                    Spacer()

                }

                Text(String(format: "%.1f L", water))
                    .font(.system(size: 36, weight: .bold))

                ProgressView(value: water, total: goal)

                Text("Goal: \(String(format: "%.1f", goal)) L")
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)

                HStack(spacing: 24) {

                    Button(action: onDecrease) {

                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 34))

                    }

                    Button(action: onIncrease) {

                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 34))

                    }

                }
                .buttonStyle(.plain)

            }

        }

    }

}

#Preview {

    WaterTrackerCard(
        water: 2.5,
        goal: 3.5,
        onIncrease: {},
        onDecrease: {}
    )

}
