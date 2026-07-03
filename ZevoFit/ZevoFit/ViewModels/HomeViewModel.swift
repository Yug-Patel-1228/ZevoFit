//
//  HomeViewModel.swift
//  ZevoFit
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {

    @Published var userName = "Yug"

    @Published var calories: Int = 2450

    @Published var water: Double = 2.8

    @Published var protein: Double = 145

    @Published var weight: Double = 73.2

    @Published var dailyGoal: Double = 0.72

    @Published var workoutName = "Push Day"

    @Published var workoutSubtitle = "Chest • Shoulders • Triceps"

}
