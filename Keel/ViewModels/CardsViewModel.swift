//
//  CardsViewModel.swift
//  Keel
//
//  Created by Diego Arroyo on 13/12/24.
//

import Foundation

class FactViewModel: ObservableObject {
    @Published var items: [FactItem] = [
        FactItem(
            title: "History of the day",
            subtitle: "The Conquest of Naples",
            description: "The conquest of Naples was not just a military victory; it was a milestone in shaping Europe as we know it today. Politics and war were intertwined with art and culture, demonstrating how the decisions of a few could shape the destiny of many.",
            imageName: "gradient1"
        ),
        FactItem(
            title: "Fact of the Day - December 10th",
            subtitle: "The First Nobel Prizes Were Awarded",
            description: "The Nobel Prizes were born from the vision of Alfred Nobel, a Swedish chemist, engineer, and inventor best known for creating dynamite.",
            imageName: "gradient2"
        )
    ]
}

class ArtCardViewModel: ObservableObject {
    @Published var homepageItems: [ArtItem] = [
        ArtItem(title: "Rosenstrauß am Fenster", year: "1832", image: "roses"),
        ArtItem(title: "Paysage De Laon", year: "1912", image: "abstract"),
        ArtItem(title: "Modigliani Gate Post", year: "1910", image: "modigliani")
    ]
    
    @Published var artistArtItems: [ArtItem] = [
        ArtItem(title: "Christ And The Samaritan Woman", year: "1818", image: "christ"),
        ArtItem(title: "Prater Landscape", year: "c. 1831", image: "prater"),
        ArtItem(title: "Rosenstrauß am Fenster", year: "1832", image: "roses"),
        ArtItem(title: "The wreath winder", year: "1861", image: "wreath"),
        ArtItem(title: "Mother luck", year: "1863", image: "motherLuck"),
        ArtItem(title: "Die Wiedergenesene", year: "1864", image: "farm"),
    ]
}

class FigureCardViewModel: ObservableObject {
    @Published var homepageItems: [FigureItem] = [
        FigureItem(name: "Napoleon Bonaparte", year: "18th Century", image: "napoleon"),
        FigureItem(name: "Rembrandt van Rijn", year: "17th Century", image: "rembrandt")
    ]
    
    @Published var historyItems: [FigureItem] = [
        FigureItem(name: "Ferdinand II of Aragon", year: "1452 - 1516", image: "ferdinand"),
        FigureItem(name: "Louis XII", year: "1462 - 1515", image: "louis")
    ]
    
    @Published var factItems: [FigureItem] = [
        FigureItem(name: "Alfred Nobel", year: "1833 - 1896", image: "alfredNobel"),
        FigureItem(name: "Henry Dunant", year: "1828 - 1910", image: "henryDunant")
    ]
}

