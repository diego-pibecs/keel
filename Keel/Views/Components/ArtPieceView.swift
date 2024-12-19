//
//  ArtPieceView.swift
//  Keel
//
//  Created by Diego Arroyo on 17/12/24.
//

import SwiftUI

struct ArtPieceView: View {
    @Environment(\.dismiss) var dismiss
    
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
                    .default,
                    .default,
                    .default,
                    .default,
                    .green,
                    .default,
                    .default,
                    .default,
                    .default,
                ],
                smoothsColors: true,
                colorSpace: .perceptual
            )
            .ignoresSafeArea(.all)
            ScrollView(.vertical) {
                Spacer()
                    .navigationBarBackButtonHidden(true)
                HStack(spacing: 260) {
                    Button(action: {
                        dismiss()
                    }) {
                        Text(Image(systemName: "arrow.left"))
                            .font(.system(size: 24))
                            .foregroundStyle(Color.mainDarkGray)
                    }
                    Button(action: {}) {
                        Text(Image(systemName: "square.and.arrow.up"))
                            .font(.system(size: 24))
                            .foregroundStyle(Color.mainDarkGray)
                    }
                }
                VStack {
                    Image("roses")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding(.horizontal, UIScreen.main.bounds.width * 0.03)
                    VStack(alignment: .leading) {
                        Text("Rosenstrauß am Fenster")
                            .font(.custom("Gloock", size: 30))
                        Text("1832, ")
                            .font(.custom("Gloock", size: 21))
                            + Text("Ferdinand Georg Waldmüller")
                            .font(.custom("Gloock", size: 18))
                    }
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.03)
                    .padding(.vertical, 7)
                    VStack(spacing: 20) {
                        Text(
                            "Rosenstrauß am Fenster is a highly detailed, realistic painting depicting a vibrant bouquet of roses arranged in a glass vase, placed on a wooden surface with a window as a dark, contrasting background. Waldmüller’s meticulous attention to detail brings life to each petal, leaf, and stem, demonstrating his mastery of light, texture, and natural beauty."
                        )
                        Text(
                            "Ferdinand Georg Waldmüller (1793–1865) was a leading figure of the Biedermeier period and one of the most prominent Realist painters in 19th-century Austria. During this era, artists moved away from grand historical or religious themes, focusing instead on everyday life, nature, and domestic scenes."
                        )
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.09)
                    VStack {
                        Text("Author")
                            .font(.custom("Gloock", size: 42))
                        Image("waldmuller")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 280)
                            .cornerRadius(20)
                        VStack(alignment: .trailing) {
                            Text("Ferdinand Georg Waldmüller")
                                .font(.system(size: 18))
                                .bold()
                            Text("1793 - 1865")
                                .font(.system(size: 14))
                        }
                    }
                }
                .foregroundStyle(.mainDarkGray)
            }
        }
    }
}

#Preview {
    ArtPieceView()
}
