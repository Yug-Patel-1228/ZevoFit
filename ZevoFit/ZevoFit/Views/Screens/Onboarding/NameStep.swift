//
//  NameStep.swift
//  ZevoFit
//

import SwiftUI

struct NameStep: View {

    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {

        VStack(spacing: 32) {

            Spacer()

            Text("👋")
                .font(.system(size: 70))

            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.bold)

            TextField(
                "Enter your name",
                text: $viewModel.name
            )
            .textFieldStyle(.roundedBorder)

            Spacer()

        }
        .padding()

    }

}

#Preview {

    NameStep(
        viewModel: OnboardingViewModel()
    )

}
