//
//  FinishStep.swift
//  ZevoFit
//

import SwiftUI

struct FinishStep: View {

    @ObservedObject var viewModel: OnboardingViewModel

    let onFinish: () -> Void

    var body: some View {

        VStack(spacing: 24) {

            Spacer()

            Text("🎉")
                .font(.system(size: 80))

            Text("You're Ready!")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Welcome to ZevoFit, \(viewModel.name.isEmpty ? "Athlete" : viewModel.name)!")
                .font(.title3)
                .multilineTextAlignment(.center)

            Text("Let's start your fitness journey.")
                .foregroundStyle(.secondary)

            Spacer()

        }
        .padding()

    }

}

#Preview {

    FinishStep(
        viewModel: OnboardingViewModel(),
        onFinish: {}
    )

}
