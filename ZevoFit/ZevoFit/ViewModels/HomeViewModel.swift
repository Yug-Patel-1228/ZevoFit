//
//  HomeViewModel.swift
//  ZevoFit
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {

    @Published var userName = "Yug"

    @Published var calories = "2450"

    @Published var water = "2.8 L"

    @Published var protein = "145 g"

    @Published var weight = "73.2 kg"

    @Published var dailyGoal = 0.72

    @Published var workoutName = "Push Day"

    @Published var workoutSubtitle = "Chest • Shoulders • Triceps"

}
