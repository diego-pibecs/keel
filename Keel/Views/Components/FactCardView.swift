//
//  MainCardView.swift
//  Keel
//
//  Created by Diego Arroyo on 13/12/24.
//

import SwiftUI

struct FactCardView: View {
    let title: String
    let subtitle: String
    let description: String
    let imageName: String
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 0.95)
                .clipShape(Rectangle())
                .cornerRadius(20)

            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.custom("New York", size: 32))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Text(description)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                HStack {
                    Spacer()
                    Text(
                        Image(systemName: "arrow.up.left.and.arrow.down.right")
                    )
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.trailing, 10)
                }
                .padding(.top, 1)
            }
            .padding(.horizontal, UIScreen.main.bounds.width * 0.05)
            .padding(.vertical, UIScreen.main.bounds.width * 0.1)
        }
        .padding(.horizontal, UIScreen.main.bounds.width * 0.03)
        .padding(.top, 3)
    }
}

#Preview {
    Homepage(currentOnboardingView: .constant(6))
}
