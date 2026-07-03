//
//  DailyGoalCard.swift
//  ZevoFit
//

import SwiftUI

struct DailyGoalCard: View {

    let progress: Double

    var body: some View {

        GlassCard {

            VStack(spacing: AppSpacing.large) {

                Text("Today's Goal")
                    .font(AppTypography.headline)

                ProgressRing(
                    progress: progress,
                    color: AppColors.primary
                )

                Text("\(Int(progress * 100))% Complete")
                    .font(AppTypography.body)
                    .foregroundStyle(AppColors.textSecondary)

            }

        }

    }

}

#Preview {

    DailyGoalCard(progress: 0.72)

}
