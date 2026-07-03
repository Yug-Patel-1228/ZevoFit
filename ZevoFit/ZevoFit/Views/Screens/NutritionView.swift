//
//  NutritionView.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct NutritionView: View {

    var body: some View {

        NavigationStack {

            VStack(spacing: 20) {

                Spacer()

                Image(systemName: AppSymbols.nutrition)
                    .font(.system(size: 70))
                    .foregroundStyle(.green)

                Text("Nutrition")
                    .font(AppTypography.largeTitle)
                    .fontWeight(.bold)

                Text("Coming Soon")
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textSecondary)

                Spacer()

            }
            .navigationTitle("Nutrition")

        }

    }

}

#Preview {
    NutritionView()
}
