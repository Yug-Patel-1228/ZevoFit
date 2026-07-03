//
//  WorkoutView.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct WorkoutView: View {

    var body: some View {

        NavigationStack {

            VStack(spacing: 20) {

                Spacer()

                Image(systemName: AppSymbols.workout)
                    .font(.system(size: 70))
                    .foregroundStyle(.blue)

                Text("Workout")
                    .font(AppTypography.largeTitle)
                    .fontWeight(.bold)

                Text("Coming Soon")
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textSecondary)

                Spacer()

            }
            .navigationTitle("Workout")

        }

    }

}

#Preview {
    WorkoutView()
}
