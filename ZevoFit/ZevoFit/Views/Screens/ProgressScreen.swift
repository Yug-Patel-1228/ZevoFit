//
//  ProgressScreen.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct ProgressScreen: View {

    var body: some View {

        NavigationStack {

            VStack(spacing: 20) {

                Spacer()

                Image(systemName: AppSymbols.progress)
                    .font(.system(size: 70))
                    .foregroundStyle(.purple)

                Text("Progress")
                    .font(AppTypography.largeTitle)
                    .fontWeight(.bold)

                Text("Coming Soon")
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textSecondary)

                Spacer()

            }
            .navigationTitle("Progress")

        }

    }

}

#Preview {
    ProgressScreen()
}
