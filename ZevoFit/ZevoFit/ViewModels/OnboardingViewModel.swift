//
//  OnboardingViewModel.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import Foundation
import Combine

final class OnboardingViewModel: ObservableObject {

    @Published var currentStep = 0

    @Published var name = ""

    @Published var age = 20

    @Published var height = 170

    @Published var weight = 70.0

    @Published var fitnessGoal = "Stay Fit"

    func createUserProfile() -> UserProfile {

        UserProfile(
            name: name,
            age: age,
            height: Double(height),
            weight: weight,
            fitnessGoal: fitnessGoal
        )

    }

}
