//
//  HomeView.swift
//  ZevoFit
//

import SwiftUI
import SwiftData

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    @Query private var profiles: [UserProfile]

    var body: some View {

        NavigationStack {

            ZStack {

                GlassBackground()

                ScrollView {

                    VStack(spacing: AppSpacing.large) {

                        HeroHeader(
                            userName: currentUserName
                        )

                        DailyGoalCard(
                            progress: viewModel.dailyGoal
                        )

                        MetricsGrid(
                            viewModel: viewModel,
                            currentWeight: currentWeight
                        )

                        WorkoutCard(
                            workoutName: viewModel.workoutName,
                            workoutSubtitle: viewModel.workoutSubtitle
                        )

                    }
                    .padding()

                }

            }
            .navigationTitle("Home")

        }

    }

    // MARK: - Computed Properties

    private var currentProfile: UserProfile? {
        profiles.first
    }

    private var currentUserName: String {
        currentProfile?.name.isEmpty == false ? currentProfile!.name : "Athlete"
    }

    private var currentWeight: Double {
        currentProfile?.weight ?? viewModel.weight
    }

}

#Preview {
    HomeView()
}
