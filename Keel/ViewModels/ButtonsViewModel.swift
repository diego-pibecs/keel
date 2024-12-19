//
//  ButtonsViewModel.swift
//  Keel
//
//  Created by Diego Arroyo on 17/12/24.
//

import Foundation
import SwiftUI

struct NoHighlightButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.0 : 1.0)
    }
}

class ButtonsGridViewModel: ObservableObject {
    @Published var homepageItems: [[ButtonItem]] = [
        [
            ButtonItem(icon: "building.columns", text: "Ancient Civilizations"),
            ButtonItem(icon: "shield.lefthalf.filled", text: "Medieval Era"),
        ],
        [
            ButtonItem(icon: "paintpalette", text: "Renaissence"),
            ButtonItem(icon: "book", text: "Enlightenment"),
        ],
        [
            ButtonItem(icon: "hammer", text: "Revolutions"),
            ButtonItem(icon: "burst", text: "World Wars")
        ],
        [
            ButtonItem(icon: "bolt", text: "Modern History"),
            ButtonItem(icon: "ellipsis", text: "Other")
        ]
    ]
    
    @Published var historyFactItems: [[ButtonItem]] = [
        [
            ButtonItem(icon: "greatCaptain", text: "The Great Captain"),
            ButtonItem(icon: "italianWars", text: "The Italian Wars")
        ],
        [
            ButtonItem(icon: "renaissance", text: "The Renaissence"),
            ButtonItem(icon: "catholicMonarchs", text: "Catholic Monarchs")
        ]
    ]
    
    @Published var dailyFactItems: [[ButtonItem]] = [
        [
            ButtonItem(icon: "oslo", text: "Nobel Prizes"),
            ButtonItem(icon: "redCross", text: "Red Cross")
        ]
        
    ]
}
