//
//  HomeView.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {

        NavigationStack {

            ZStack {

                // Background
                GlassBackground()

                ScrollView {

                    VStack(alignment: .leading, spacing: AppSpacing.large) {

                        // Greeting

                        VStack(alignment: .leading, spacing: AppSpacing.small) {

                            Text("Good Afternoon 👋")
                                .font(AppTypography.headline)
                                .foregroundStyle(AppColors.textSecondary)

                            Text(viewModel.userName)
                                .font(AppTypography.largeTitle)
                                .fontWeight(.bold)

                        }

                        // Daily Goal

                        GlassCard {

                            VStack(spacing: AppSpacing.large) {

                                Text("Today's Goal")
                                    .font(AppTypography.headline)

                                ProgressRing(
                                    progress: viewModel.dailyGoal,
                                    color: .blue
                                )

                                Text("\(Int(viewModel.dailyGoal * 100))% Complete")
                                    .font(AppTypography.body)
                                    .foregroundStyle(AppColors.textSecondary)

                            }

                        }

                        // Metrics

                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            spacing: AppSpacing.medium
                        ) {

                            MetricCard(
                                title: "Calories",
                                value: viewModel.calories,
                                symbol: AppSymbols.calories,
                                color: .orange
                            )

                            MetricCard(
                                title: "Water",
                                value: viewModel.water,
                                symbol: AppSymbols.water,
                                color: .blue
                            )

                            MetricCard(
                                title: "Protein",
                                value: viewModel.protein,
                                symbol: AppSymbols.nutrition,
                                color: .green
                            )

                            MetricCard(
                                title: "Weight",
                                value: viewModel.weight,
                                symbol: AppSymbols.weight,
                                color: .purple
                            )

                        }

                        // Workout

                        GlassCard {

                            VStack(alignment: .leading, spacing: AppSpacing.medium) {

                                Text("Today's Workout")
                                    .font(AppTypography.headline)

                                Text(viewModel.workoutName)
                                    .font(AppTypography.title)
                                    .fontWeight(.bold)

                                Text(viewModel.workoutSubtitle)
                                    .foregroundStyle(AppColors.textSecondary)

                                Button("Start Workout") {

                                }
                                .buttonStyle(.borderedProminent)

                            }

                        }

                    }
                    .padding()

                }

            }
            .navigationTitle("Home")

        }

    }

}

#Preview {
    HomeView()
}
