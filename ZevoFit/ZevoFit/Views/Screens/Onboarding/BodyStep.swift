//
//  BodyStep.swift
//  ZevoFit
//

import SwiftUI

struct BodyStep: View {

    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {

        VStack(spacing: 24) {

            Text("📏")
                .font(.system(size: 70))

            Text("Your Body")
                .font(.largeTitle)
                .fontWeight(.bold)

            VStack(spacing: 16) {

                TextField(
                    "Height (cm)",
                    value: $viewModel.height,
                    format: .number
                )
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)

                TextField(
                    "Weight (kg)",
                    value: $viewModel.weight,
                    format: .number
                )
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)

            }

        }
        .padding()

    }

}

#Preview {

    BodyStep(viewModel: OnboardingViewModel())

}
