//
//  MetricsGrid.swift
//  ZevoFit
//

import SwiftUI

struct MetricsGrid: View {

    @ObservedObject var viewModel: HomeViewModel

    let currentWeight: Double

    var body: some View {

        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ],
            spacing: AppSpacing.medium
        ) {

            MetricCard(
                title: "Calories",
                value: "\(viewModel.calories)",
                symbol: AppSymbols.calories,
                color: .orange
            )

            MetricCard(
                title: "Water",
                value: String(format: "%.1f L", viewModel.water),
                symbol: AppSymbols.water,
                color: .blue
            )

            MetricCard(
                title: "Protein",
                value: String(format: "%.0f g", viewModel.protein),
                symbol: AppSymbols.nutrition,
                color: .green
            )

            MetricCard(
                title: "Weight",
                value: String(format: "%.1f kg", currentWeight),
                symbol: AppSymbols.weight,
                color: .purple
            )

        }

    }

}

#Preview {

    MetricsGrid(
        viewModel: HomeViewModel(),
        currentWeight: 73.2
    )

}
