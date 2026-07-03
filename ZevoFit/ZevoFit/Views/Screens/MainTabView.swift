//
//  MainTabView.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct MainTabView: View {

    var body: some View {

        TabView {

            HomeView()
                .tabItem {
                    Label("Home", systemImage: AppSymbols.home)
                }

            WorkoutView()
                .tabItem {
                    Label("Workout", systemImage: AppSymbols.workout)
                }

            NutritionView()
                .tabItem {
                    Label("Nutrition", systemImage: AppSymbols.nutrition)
                }

            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: AppSymbols.progress)
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: AppSymbols.profile)
                }

        }

    }

}

#Preview {
    MainTabView()
}
