//
//  OnboardingView.swift
//  ZevoFit
//
//  Created by Yug  on 7/3/26.
//

import SwiftUI

struct OnboardingView: View {
    
    let onGetStarted: () -> Void

    var body: some View {

        VStack(spacing: 40) {

            Spacer()

            Image(systemName: "figure.strengthtraining.traditional")
                .font(.system(size: 90))

            VStack(spacing: 12) {

                Text("Welcome to ZevoFit")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Track your workouts, nutrition and progress—all in one place.")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

            }

            Spacer()

            Button {
                onGetStarted()

            } label: {

                Text("Get Started")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()

            }
            .buttonStyle(.borderedProminent)
            .padding()

        }

    }

}

#Preview {
    OnboardingView(onGetStarted: {})
}
