//
//  HeroHeader.swift
//  ZevoFit
//

import SwiftUI

struct HeroHeader: View {

    let userName: String

    private var greeting: String {

        let hour = Calendar.current.component(.hour, from: Date())

        switch hour {

        case 5..<12:
            return "Good Morning ☀️"

        case 12..<17:
            return "Good Afternoon 👋"

        default:
            return "Good Evening 🌙"

        }

    }

    private var today: String {

        Date.now.formatted(
            .dateTime
            .weekday(.wide)
            .month(.wide)
            .day()
        )

    }

    var body: some View {

        VStack(alignment: .leading, spacing: AppSpacing.small) {

            Text(greeting)
                .font(AppTypography.headline)
                .foregroundStyle(AppColors.textSecondary)

            Text(userName)
                .font(AppTypography.largeTitle)
                .fontWeight(.bold)

            Text(today)
                .font(AppTypography.body)
                .foregroundStyle(AppColors.textSecondary)

            Text("Stay consistent today 💪")
                .font(AppTypography.body)
                .foregroundStyle(.blue)

        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }

}

#Preview {

    HeroHeader(userName: "Yug")

}
