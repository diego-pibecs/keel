//
//  CustomTabView.swift
//  Keel
//
//  Created by Diego Arroyo on 18/12/24.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, altImage: String, title: String)] = [
        ("heart", "heart.fill", "Favorites"),
        ("sailboat", "sailboat.fill", "Home"),
        ("person", "person.fill", "Profile")
    ]
    
    var body: some View {
        ZStack {
            HStack(spacing: 54) {
                ForEach(0..<3) { index in
                    Button {
                        tabSelection = index + 1
                    } label: {
                        if index + 1 == tabSelection {
                            Text(Image(systemName: tabBarItems[index].altImage))
                                .font(.system(size: 28))
                                .foregroundStyle(.mainDarkGray)
                        } else {
                            Text(Image(systemName: tabBarItems[index].image))
                                .font(.system(size: 28))
                                .foregroundStyle(.mainDarkGray)
                        }
                    }
                    .buttonStyle(NoHighlightButtonStyle())
                }
            }
        }
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
}
