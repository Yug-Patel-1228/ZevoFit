//
//  ZevoFitApp.swift
//  ZevoFit
//
//  Created by Yug  on 7/3/26.
//

import SwiftUI
import SwiftData

@main
struct ZevoFitApp: App {

    var body: some Scene {

        WindowGroup {

            RootView()

        }
        .modelContainer(for: [
            DailyStats.self,
            UserProfile.self
        ])

    }

}
