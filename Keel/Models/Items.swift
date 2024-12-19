//
//  HistoryItem.swift
//  history-project
//
//  Created by Diego Arroyo on 13/12/24.
//

import Foundation

struct FactItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let subtitle: String
    let description: String
    let imageName: String
}

struct ArtItem {
    let title: String
    let year: String
    let image: String
}

struct FigureItem {
    let name: String
    let year: String
    let image: String
}

struct ButtonItem: Identifiable, Hashable {
    let id = UUID()
    let icon: String
    let text: String
}
