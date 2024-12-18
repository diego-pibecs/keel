//
//  FigureView.swift
//  history-project
//
//  Created by Diego Arroyo on 17/12/24.
//

import SwiftUI

struct FigureView: View {
    @StateObject private var artCardModel = ArtCardViewModel()

    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
    ]

    var body: some View {
        ZStack {
            MeshGradient(
                width: 2,
                height: 2,
                points: [
                    [0.0, 0.0],
                    [0.0, 1.0],
                    [1.0, 0.0],
                    [1.0, 1.0],
                ],
                colors: [
                    .brown,
                    .mainDarkGray,
                    .mainDarkGray,
                    .mainDarkGray,
                ],
                smoothsColors: true,
                colorSpace: .perceptual
            )
            .ignoresSafeArea(.all)
            ScrollView(.vertical) {
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
                VStack {
                    ZStack {
                        Image("waldmuller")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .padding(
                                .horizontal, UIScreen.main.bounds.width * 0.12)
                        Text("Ferdinand Georg Waldmüller")
                            .position(x: 180, y: 25)
                        Text("1793 - 1865")
                            .position(x: 270, y: 380)
                    }
                    .padding(.vertical, 20)
                    .font(.custom("Gloock", size: 36))
                    HStack {
                        Text("Biography")
                        Spacer()
                        Text("art")
                            .underline()
                    }
                    .font(.custom("Gloock", size: 30))
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.08)
                    .padding(.vertical, 7)
                    VStack(spacing: 20) {
                        //                        Text(
                        //                            "Ferdinand Georg Waldmüller was born in Vienna, Austria. At the age of 14, he enrolled in the Academy of Fine Arts in Vienna, where he began formal training in painting and the fine arts. Despite early struggles and financial difficulties, his natural talent for realism quickly set him apart."
                        //                        )
                        //                        Text(
                        //                            "Initially, Waldmüller earned a living painting portraits of aristocrats and upper-class patrons, developing his skills in meticulous detail and precision. This attention to detail would later become a hallmark of his work."
                        //                        )
                        VStack(alignment: .leading) {
                            Text("Career Development")
                                .bold()
                                .font(.system(size: 20))
                                .padding(.top, 20)
                                .padding(.bottom, 5)
                            Text(
                                "Waldmüller became a prominent figure during the Biedermeier period (1815–1848), an era in Central Europe marked by a focus on domestic life, nature, and simplicity. The political unrest of the time led to a retreat from grand historical themes, and Waldmüller embraced this shift by concentrating on realism and everyday subjects."
                            )
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.09)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: UIScreen.main.bounds.width * 0.02) {
                            ForEach(artCardModel.artistArtItems, id: \.title) {
                                item in
                                ArtCardView(
                                    title: item.title,
                                    year: item.year,
                                    image: item.image
                                )
                            }
                        }
                    }
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.03)
                    .padding(.top, 20)

                    HStack {
                        Text("1818")
                        ZStack {
                            Rectangle()
                                .frame(width: 230, height: 1)
                            Circle()
                                .frame(width: 15)
                            Text("1832")
                                .padding(.top, 50)
                        }
                        Text("1864")
                    }
                    .font(.custom("Gloock", size: 20))

                    VStack(alignment: .leading) {
                        Text("Conflict and Recognition")
                            .bold()
                            .font(.system(size: 20))
                            .padding(.top, 20)
                            .padding(.bottom, 5)
                        Text(
                            "Waldmüller often clashed with the artistic establishment in Vienna, particularly the Academy of Fine Arts, where he taught. He criticized the academic approach to art, arguing for a focus on direct observation of nature rather than rigid, classical ideals. His insistence on realism and naturalism alienated some of his contemporaries but laid the foundation for his later recognition."
                        )
                        Text(
                            "In the 1850s, Waldmüller’s popularity began to grow again, as his art was appreciated not only in Austria but also across Europe. His works became celebrated for their vivid depictions of everyday life and his technical mastery."
                        )
                        .padding(.top, 7)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.09)

                    HStack {
                        Text("Our Collection")
                            .font(.custom("Gloock", size: 42))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    .padding(.top, 40)
                    LazyVGrid(columns: columns, spacing: 10) {  // Grid con 2 columnas
                        ForEach(artCardModel.artistArtItems, id: \.title) { imageName in
                            Image(imageName.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)  // Ajusta el contenido
                                .frame(height: 150)  // Altura fija para cada imagen
                                .clipped()  // Recorta el contenido si se desborda
                                .cornerRadius(12)  // Bordes redondeados
                                .shadow(radius: 5)  // Sombra opcional
                        }
                    }
                    .padding(.horizontal, 10)  // Padding en los lados
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    FigureView()
}
