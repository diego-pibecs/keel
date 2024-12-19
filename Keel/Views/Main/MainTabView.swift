//
//  MainTabView.swift
//  Keel
//
//  Created by Diego Arroyo on 18/12/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var tabSelection = 2
    
    var body: some View {
        NavigationStack {
            TabView(selection: $tabSelection) {
                FavoritesView()
                    .tag(1)
                Homepage(currentOnboardingView: .constant(6))
                    .tag(2)
                ProfileView()
                    .tag(3)
            }
            .overlay(alignment: .bottom) {
                CustomTabView(tabSelection: $tabSelection)
            }
            .padding(.vertical, 30)
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    MainTabView()
}
