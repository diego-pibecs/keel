//
//  CardExpansionView.swift
//  history-project
//
//  Created by Diego Arroyo on 17/12/24.
//

import SwiftUI

struct CardExpansionView: View {

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
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                    .brown,
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
                    Text("History of the Day")
                        .bold()
                        .padding(.top, 10)
                    Text("The Conquest of Naples")
                        .font(.custom("Gloock", size: 42))
                    HStack {
                        Text("February 25, 1504: ")
                            .bold()
                            + Text(
                                "Ferdinand the Catholic secures the Kingdom of Naples for Spain."
                            )
                    }
                    .padding(.top, 10)
                    Text(
                        "During the Italian Wars (1494–1559), the Catholic Monarchs, Isabella of Castile and Ferdinand of Aragon, faced off against France in a conflict that would define European hegemony during the Renaissance. Through a combination of strategic alliances and military confrontations, Spain managed to drive French forces out of the Kingdom of Naples, solidifying its control over this critical Mediterranean region."
                    )
                    .padding(.top, 25)
                    VStack(alignment: .trailing) {
                        Image("naples")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                        Text("Vue du Castel dell’Ovo dans la baie de Naples")
                            .bold()
                            .font(.system(size: 14))
                        Text("Adrien Manglard (French, 1695-1760)")
                            .font(.system(size: 10))
                    }
                    .padding(.horizontal, -20)
                    .padding(.vertical, 25)
                    Text("Why was Naples so important?")
                        .bold()
                        .font(.system(size: 20))
                        .padding(.bottom, 5)
                    Text(
                        "The Kingdom of Naples was not only a cultural jewel, with its Roman and Renaissance heritage, but also a strategic hub for Mediterranean maritime trade. Controlling Naples ensured access to vital trade routes and bolstered Spanish influence across Europe."
                    )
                    Text("Long-term impact")
                        .bold()
                        .font(.system(size: 20))
                        .padding(.top, 20)
                        .padding(.bottom, 5)
                    Text(
                        "The conquest of Naples marked the beginning of Spanish supremacy in Italy, which lasted until the 18th century. It also established the Spanish Tercios, military units that became legendary across Europe."
                    )
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Key Figures")
                            .font(.custom("Gloock", size: 36))
                            .padding(.top, 30)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                                ForEach(figureModel.historyItems, id: \.name) { item in
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
                            ForEach(buttonGridModel.historyFactItems, id: \.self) { row in
                                HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                                    ForEach(row) { item in
                                        Button(action: {})
                                        {
                                            ImageButtonView(image: item.icon, text: item.text)
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
    CardExpansionView()
}
