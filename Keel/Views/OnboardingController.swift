//
//  ContentView.swift
//  history-project
//
//  Created by Diego Arroyo on 13/12/24.
//

import SwiftUI

struct OnboardingController: View {
    @State private var currentOnboardingView = 6
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = true

    var body: some View {
        NavigationStack {
            VStack {
                if currentOnboardingView == 6 || hasSeenOnboarding {
                    Homepage(currentOnboardingView: $currentOnboardingView)
                        .transition(.move(edge: .trailing))
                } //else if currentOnboardingView == 1 {
//                    Onboarding(currentOnboardingView: $currentOnboardingView)
//                } else if currentOnboardingView == 2 {
//                    OnboardingIntro(currentOnboardingView: $currentOnboardingView)
//                } else if currentOnboardingView == 3 {
//                    OnboardingLocation(currentOnboardingView: $currentOnboardingView)
//                } else if currentOnboardingView == 4 {
//                    OnboardingBluetooth(currentOnboardingView: $currentOnboardingView)
//                } else if currentOnboardingView == 5 {
//                    OnboardingData(currentOnboardingView: $currentOnboardingView)
//                }
            }
            .animation(.easeInOut, value: currentOnboardingView)
        }
        .navigationBarBackButtonHidden(true)
    }

}


struct OnboardingControllerPreviews: PreviewProvider {
    static var previews: some View {
        OnboardingController()
    }
}
