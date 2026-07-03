//
//  OnboardingView.swift
//  ZevoFit
//

import SwiftUI
import SwiftData

struct OnboardingView: View {

    let onGetStarted: () -> Void

    @StateObject private var viewModel = OnboardingViewModel()

    @Environment(\.modelContext) private var modelContext

    @Query private var profiles: [UserProfile]

    var body: some View {

        ZStack {

            GlassBackground()

            VStack {

                ProgressView(
                    value: Double(viewModel.currentStep + 1),
                    total: 4
                )
                .padding(.horizontal)

                Spacer()

                Group {

                    switch viewModel.currentStep {

                    case 0:
                        NameStep(viewModel: viewModel)

                    case 1:
                        BodyStep(viewModel: viewModel)

                    case 2:
                        GoalStep(viewModel: viewModel)

                    default:
                        FinishStep(
                            viewModel: viewModel,
                            onFinish: onGetStarted
                        )

                    }

                }
                .animation(.smooth, value: viewModel.currentStep)

                Spacer()

                HStack {

                    if viewModel.currentStep > 0 {

                        Button("Back") {

                            withAnimation {
                                viewModel.currentStep -= 1
                            }

                        }

                    }

                    Spacer()

                    GlassButton(
                        title: viewModel.currentStep == 3 ? "Finish" : "Continue",
                        systemImage: "arrow.right"
                    ) {

                        if viewModel.currentStep < 3 {

                            withAnimation {
                                viewModel.currentStep += 1
                            }

                        } else {

                            saveProfile()

                            onGetStarted()

                        }

                    }
                    .frame(width: 180)

                }
                .padding()

            }

        }

    }

    // MARK: - Save or Update Profile

    private func saveProfile() {

        if let profile = profiles.first {

            profile.name = viewModel.name
            profile.age = viewModel.age
            profile.height = Double(viewModel.height)
            profile.weight = viewModel.weight
            profile.fitnessGoal = viewModel.fitnessGoal

        } else {

            let profile = viewModel.createUserProfile()

            modelContext.insert(profile)

        }

    }

}

#Preview {

    OnboardingView {

    }

}
