//
//  UserProfile.swift
//  ZevoFit
//
//  Created by Yug  on 7/3/26.
//

import Foundation
import SwiftData

@Model
final class UserProfile {

    var name: String
    var age: Int
    var height: Double
    var weight: Double

    var fitnessGoal: String

    init(
        name: String = "",
        age: Int = 18,
        height: Double = 170,
        weight: Double = 70,
        fitnessGoal: String = "Maintain Weight"
    ) {

        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.fitnessGoal = fitnessGoal

    }

}
