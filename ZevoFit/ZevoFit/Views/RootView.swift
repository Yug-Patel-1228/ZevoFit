import SwiftUI

struct RootView: View {

    @State private var showOnboarding = false
    @State private var showHome = false

    var body: some View {

        if showHome {

            MainTabView()

        } else if showOnboarding {

            OnboardingView(onGetStarted: {

                withAnimation(.easeInOut) {
                    showHome = true
                }

            })

        } else {

            SplashView(onFinished: {

                withAnimation(.easeInOut) {
                    showOnboarding = true
                }

            })

        }

    }

}

#Preview {
    RootView()
}
