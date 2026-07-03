//
//  ProgressRing.swift
//  ZevoFit
//
//  Created by Yug on 7/3/26.
//

import SwiftUI

struct ProgressRing: View {

    var progress: Double
    var color: Color
    var lineWidth: CGFloat = 12

    var body: some View {

        ZStack {

            Circle()
                .stroke(
                    Color.gray.opacity(0.15),
                    lineWidth: lineWidth
                )

            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    color,
                    style: StrokeStyle(
                        lineWidth: lineWidth,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut, value: progress)

            Text("\(Int(progress * 100))%")
                .font(.headline)

        }
        .frame(width: 120, height: 120)

    }

}

#Preview {

    ProgressRing(
        progress: 0.72,
        color: .blue
    )

}
