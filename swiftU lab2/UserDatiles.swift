//
//  UserDatiles.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
//
import SwiftUI

struct UserDetail: View {
    var user: User

    var body: some View {
        ScrollView {
           Spacer()
            UserImage().scaleEffect(2).frame(width: 200,height: 100)

            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.title)

                HStack {
                    Text(user.email)
                    Spacer()

                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("About \(user.about)")
                    .font(.title2)
            }
            .padding()
        }
        .navigationTitle(user.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    UserDetail(user: User(id: "77", name: "ahmed", about: "hello", email: "rrr@gmail.com"))
}
