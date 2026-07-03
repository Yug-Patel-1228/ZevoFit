//
//  MetricCard.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct MetricCard: View {

    let title: String
    let value: String
    let symbol: String
    let color: Color

    var body: some View {

        GlassCard {

            VStack(alignment: .leading, spacing: AppSpacing.medium) {

                Image(systemName: symbol)
                    .font(.title2)
                    .foregroundStyle(color)

                Text(value)
                    .font(AppTypography.title)

                Text(title)
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.textSecondary)

            }
            .frame(maxWidth: .infinity, alignment: .leading)

        }

    }

}

#Preview {

    MetricCard(
        title: "Calories",
        value: "2450",
        symbol: AppSymbols.calories,
        color: .orange
    )

}
