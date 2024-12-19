//
//  ButtonView.swift
//  Keel
//
//  Created by Diego Arroyo on 13/12/24.
//

import SwiftUI

struct ButtonView: View {
    let icon: String
    let text: String
    let foregroundColor: Color
    let backgroundColor: Color

    init(
        icon: String,
        text: String,
        foregroundColor: Color = Color.mainDarkGray,
        backgroundColor: Color = Color.secondDarkGray
    ) {
        self.icon = icon
        self.text = text
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
    }

    var body: some View {
        ZStack {
            Rectangle()
                .fill(backgroundColor)
                .cornerRadius(20)
                .frame(maxWidth: .infinity)
                .frame(height: 110)
            VStack {
                Text(Image(systemName: icon))
                    .font(.system(size: 36))
                    .foregroundColor(foregroundColor)
                    .fontWeight(.semibold)
                Text(text)
                    .font(.headline)
                    .foregroundColor(foregroundColor)
            }
        }
    }
}

struct ImageButtonView: View {
    let image: String
    let text: String
    init(
        image: String,
        text: String
    ) {
        self.image = image
        self.text = text
    }

    var body: some View {
        ZStack(alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 120, alignment: .top)
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .clipped()
                .cornerRadius(20)
            LinearGradient(
                colors: [
                    Color.black.opacity(0.6),
                    Color.black.opacity(0),
                ], startPoint: .bottom, endPoint: .top
            )
            .frame(width: 150, height: 120)
            .cornerRadius(20)
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 80)
                Text(text)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(Color.white)
                    .padding(.leading, 10)
            }
        }
    }
}

//#Preview {
//    ButtonView(icon: "dice", text: "Preview")
//}

#Preview {
    ImageButtonView(image: "catholicMonarchs", text: "The Great Captain")
}
