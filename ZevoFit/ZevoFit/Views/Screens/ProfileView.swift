//
//  ProfileView.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {

        NavigationStack {

            VStack(spacing: 20) {

                Spacer()

                Image(systemName: AppSymbols.profile)
                    .font(.system(size: 70))
                    .foregroundStyle(.blue)

                Text("Profile")
                    .font(AppTypography.largeTitle)
                    .fontWeight(.bold)

                Text("Coming Soon")
                    .font(AppTypography.headline)
                    .foregroundStyle(AppColors.textSecondary)

                Spacer()

            }
            .navigationTitle("Profile")

        }

    }

}

#Preview {
    ProfileView()
}
