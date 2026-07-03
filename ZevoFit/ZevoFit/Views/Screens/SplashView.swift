import SwiftUI

struct SplashView: View {

    let onFinished: () -> Void

    @State private var logoVisible = false
    @State private var textVisible = false

    var body: some View {

        ZStack {

            Color(.systemBackground)
                .ignoresSafeArea()

            VStack(spacing: 18) {

                Image(systemName: "figure.strengthtraining.traditional")
                    .font(.system(size: 72))
                    .symbolRenderingMode(.hierarchical)
                    .scaleEffect(logoVisible ? 1 : 0.7)
                    .opacity(logoVisible ? 1 : 0)

                VStack(spacing: 8) {

                    Text("ZevoFit")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Move Better. Live Better.")
                        .font(.headline)
                        .foregroundStyle(.secondary)

                }
                .opacity(textVisible ? 1 : 0)

            }

        }
        .onAppear {

            withAnimation(.easeOut(duration: 0.8)) {
                logoVisible = true
            }

            withAnimation(.easeIn(duration: 0.8).delay(0.4)) {
                textVisible = true
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                onFinished()
            }

        }

    }

}

#Preview {
    SplashView(onFinished: {})
}
