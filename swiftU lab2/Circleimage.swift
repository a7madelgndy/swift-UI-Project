//
//  Image.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image(""))
}
