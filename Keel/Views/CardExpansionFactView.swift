//
//  CardExpansionFactView.swift
//  history-project
//
//  Created by Diego Arroyo on 17/12/24.
//

import SwiftUI

struct CardExpansionFactView: View {

    @StateObject private var figureModel = FigureCardViewModel()
    @StateObject private var buttonGridModel = ButtonsGridViewModel()

    var body: some View {
        ZStack {
            MeshGradient(
                width: 3,
                height: 3,
                points: [
                    [0.0, 0.0],
                    [0.5, 0.0],
                    [1.0, 0.0],
                    [0.0, 0.5],
                    [0.9, 0.5],
                    [1.0, 0.5],
                    [0.0, 1.0],
                    [0.5, 1.0],
                    [1.0, 1.0],
                ],
                colors: [
                    .brown,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                ],
                smoothsColors: true,
                colorSpace: .perceptual
            )
            .ignoresSafeArea(.all)
            ScrollView {
                HStack(spacing: 260) {
                    Button(action: {}) {
                        Text(Image(systemName: "arrow.left"))
                            .font(.system(size: 24))
                            .foregroundStyle(Color.white)
                    }
                    Button(action: {}) {
                        Text(Image(systemName: "square.and.arrow.up"))
                            .font(.system(size: 24))
                            .foregroundStyle(Color.white)
                    }
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Fact of the Day")
                        .bold()
                        .padding(.vertical, 10)
                    Text("The First Nobel Prizes Were Awarded")
                        .font(.custom("Gloock", size: 42))
                    HStack {
                        Text("December 10, 1901: ")
                            .bold()
                            + Text(
                                "The Nobel Prizes were established according to the will of Alfred Nobel, the inventor of dynamite, to honor outstanding achievements in physics, chemistry, medicine, literature, and peace. The inaugural ceremony was held in Stockholm, Sweden, and the first Peace Prize was awarded to Jean Henri Dunant (founder of the Red Cross) and Frédéric Passy (a French pacifist)."
                            )
                    }
                    .padding(.top, 25)
                    VStack(alignment: .trailing) {
                        Image("nobelPrize")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                    }
                    .padding(.horizontal, -20)
                    .padding(.vertical, 25)
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Key Figures")
                            .font(.custom("Gloock", size: 36))
                            .padding(.top, 30)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                                ForEach(figureModel.factItems, id: \.name) {
                                    item in
                                    SmallArtCardView(
                                        title: item.name,
                                        year: item.year,
                                        image: item.image
                                    )
                                }
                            }
                        }
                        .padding(.horizontal, -10)
                    }
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Related")
                            .font(.custom("Gloock", size: 36))
                            .padding(.top, 30)
                        VStack(spacing: 7) {
                            ForEach(buttonGridModel.dailyFactItems, id: \.self)
                            { row in
                                HStack(
                                    spacing: UIScreen.main.bounds.width * 0.02
                                ) {
                                    ForEach(row) { item in
                                        Button(action: {}) {
                                            ImageButtonView(
                                                image: item.icon,
                                                text: item.text)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                .foregroundStyle(Color.white)
                .padding(.horizontal, UIScreen.main.bounds.width * 0.09)
            }
        }
    }
}

#Preview {
    CardExpansionFactView()
}
