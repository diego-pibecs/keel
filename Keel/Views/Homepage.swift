//
//  Homepage.swift
//  history-project
//
//  Created by Diego Arroyo on 13/12/24.
//

import SwiftUI

struct Homepage: View {
    @Binding var currentOnboardingView: Int
    @StateObject private var factModel = FactViewModel()
    @StateObject private var artModel = ArtCardViewModel()
    @StateObject private var figureModel = FigureCardViewModel()
    @StateObject private var buttonGridModel = ButtonsGridViewModel()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    HStack {
                        Text("Discover")
                            .font(.custom("Gloock", size: 52))
                            .padding(.leading, 50)
                        Spacer()
                        Button(action: {

                        }
                        ) {
                            Text(Image(systemName: "magnifyingglass"))
                                .foregroundStyle(Color.default)
                                .font(.system(size: 36))
                                .fontWeight(.semibold)
                        }.padding(.trailing, 50)
                    }.padding(.top, 25)

                    ForEach(factModel.items, id: \.title) { item in
                        FactCardView(
                            title: item.title,
                            subtitle: item.subtitle,
                            description: item.description,
                            imageName: item.imageName
                        )
                    }

                    HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                        ButtonView(icon: "dice", text: "Random fact")
                        ButtonView(icon: "calendar", text: "Previous days")
                    }.padding(.horizontal, UIScreen.main.bounds.width * 0.03)
                }

                // Art section
                HStack {
                    Text("Art")
                        .font(.custom("Gloock", size: 42))
                        .padding(.leading, 30)
                    Spacer()
                }
                .padding(.top, 40)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                        ForEach(artModel.homepageItems, id: \.title) { item in
                            ArtCardView(
                                title: item.title,
                                year: item.year,
                                image: item.image
                            )
                        }
                    }
                }.padding(.horizontal, UIScreen.main.bounds.width * 0.03)

                // Key Figures section
                HStack {
                    Text("Key Figures")
                        .font(.custom("Gloock", size: 42))
                        .padding(.leading, 30)
                    Spacer()
                }
                .padding(.top, 40)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                        ForEach(figureModel.homepageItems, id: \.name) { item in
                            ArtCardView(
                                title: item.name,
                                year: item.year,
                                image: item.image
                            )
                        }
                    }
                }.padding(.horizontal, UIScreen.main.bounds.width * 0.03)

                HStack {
                    Text("Topics")
                        .font(.custom("Gloock", size: 42))
                        .padding(.leading, 30)
                    Spacer()
                }
                .padding(.top, 40)
                VStack(spacing: 7) {
                    ForEach(buttonGridModel.homepageItems, id: \.self) { row in
                        HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                            ForEach(row) { item in
                                ButtonView(icon: item.icon, text: item.text)
                            }
                        }
                        .padding(.horizontal, UIScreen.main.bounds.width * 0.03)
                    }
                }
            }
        }
        ZStack {
            HStack(spacing: 50) {
                Text(Image(systemName: "heart"))
                    .font(.system(size: 32))
                Text(Image(systemName: "sailboat.fill"))
                    .font(.system(size: 38))
                Text(Image(systemName: "person"))
                    .font(.system(size: 32))
            }
        }
    }
}

#Preview {
    Homepage(currentOnboardingView: .constant(6))
}
