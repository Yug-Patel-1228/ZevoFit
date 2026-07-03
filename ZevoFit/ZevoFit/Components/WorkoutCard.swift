//
//  WorkoutCard.swift
//  ZevoFit
//

import SwiftUI

struct WorkoutCard: View {

    let workoutName: String
    let workoutSubtitle: String

    var body: some View {

        GlassCard {

            VStack(alignment: .leading, spacing: AppSpacing.medium) {

                HStack {

                    Image(systemName: AppSymbols.workout)
                        .foregroundStyle(.blue)

                    Text("Today's Workout")
                        .font(AppTypography.headline)

                }

                Text(workoutName)
                    .font(AppTypography.title)
                    .fontWeight(.bold)

                Text(workoutSubtitle)
                    .foregroundStyle(AppColors.textSecondary)

                Button {

                } label: {

                    Label("Start Workout", systemImage: "play.fill")
                        .frame(maxWidth: .infinity)

                }
                .buttonStyle(.borderedProminent)

            }

        }

    }

}

#Preview {

    WorkoutCard(
        workoutName: "Push Day",
        workoutSubtitle: "Chest • Shoulders • Triceps"
    )

}
