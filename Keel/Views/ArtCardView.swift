//
//  BigCardView.swift
//  history-project
//
//  Created by Diego Arroyo on 13/12/24.
//

import SwiftUI

struct ArtCardView: View {
    let title: String
    let year: String
    let image: String

    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .clipShape(Rectangle())
                .cornerRadius(20)
            VStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.custom("Gloock", size: 20))
                        Text(year)
                            .font(.custom("Gloock", size: 16))
                    }
                    .padding(.bottom, 30)
                    .padding(.leading, 18)
                    .foregroundColor(.white)
                    Spacer()
                }
            }
        }
    }
}

struct SmallArtCardView: View {
    let title: String
    let year: String
    let image: String

    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 0.5)
                .clipShape(Rectangle())
                .cornerRadius(20)
            LinearGradient(
                colors: [
                    Color.black.opacity(0.6),
                    Color.black.opacity(0),
                ], startPoint: .bottom, endPoint: .top
            ).cornerRadius(20)
            VStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.system(size: 16, weight: .bold))
                            .bold()
                        Text(year)
                            .font(.system(size: 16))
                    }
                    .padding(.bottom, 10)
                    .padding(.leading, 15)
                    .foregroundColor(.white)
                    Spacer()
                }
            }
        }
    }
}
