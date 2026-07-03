//
//  DailyStats.swift
//  ZevoFit
//

import Foundation
import SwiftData

@Model
final class DailyStats {

    var calories: Int
    var water: Double
    var protein: Double
    var weight: Double
    var dailyGoal: Double
    var date: Date

    init(
        calories: Int = 0,
        water: Double = 0,
        protein: Double = 0,
        weight: Double = 0,
        dailyGoal: Double = 0,
        date: Date = Date()
    ) {
        self.calories = calories
        self.water = water
        self.protein = protein
        self.weight = weight
        self.dailyGoal = dailyGoal
        self.date = date
    }

}
