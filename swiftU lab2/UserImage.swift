//
//  SwiftUIView.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
//

import SwiftUI

struct UserImage: View {
    let imageUrl = "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg"

    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            case .failure:
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            @unknown default:
                EmptyView()
            }
        }
    }
}
