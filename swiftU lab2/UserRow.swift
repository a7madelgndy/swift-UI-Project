//
//  UserRow.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
//


import SwiftUI

struct UserRow: View {
    var user: User
  //  let imagUrl = "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg"

    var body: some View {
        HStack {
            UserImage()
            VStack(alignment:.leading) {
                Text(user.name)
                    .font(.headline)
                Text("Id : \(user.id)")
                    .font(.headline)
            }
        }
        .padding(.leading)
    }
}

#Preview {
    Group{
    }.previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 80))

}
