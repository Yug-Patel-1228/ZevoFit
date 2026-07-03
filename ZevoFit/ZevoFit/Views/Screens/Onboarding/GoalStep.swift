//
//  GoalStep.swift
//  ZevoFit
//

import SwiftUI

struct GoalStep: View {

    @ObservedObject var viewModel: OnboardingViewModel

    let goals = [
        "Lose Fat",
        "Build Muscle",
        "Stay Fit",
        "Gain Weight"
    ]

    var body: some View {

        VStack(spacing: 24) {

            Text("🎯")
                .font(.system(size: 70))

            Text("Choose Your Goal")
                .font(.largeTitle)
                .fontWeight(.bold)

            ForEach(goals, id: \.self) { goal in

                Button {

                    viewModel.fitnessGoal = goal

                } label: {

                    HStack {

                        Text(goal)

                        Spacer()

                        if goal == viewModel.fitnessGoal {

                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(.green)

                        }

                    }
                    .padding()
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 16))

                }
                .buttonStyle(.plain)

            }

        }
        .padding()

    }

}

#Preview {

    GoalStep(viewModel: OnboardingViewModel())

}
