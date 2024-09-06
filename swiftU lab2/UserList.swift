//
//  UserList.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
//

import SwiftUI

struct UserList: View {
    @State private var users: Users = []

    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink(destination: UserDetail(user: user)) {
                    UserRow(user: user)
                }
            }
            .navigationTitle("Users")
        }
        .onAppear {
            loadUsers()
        }
    }

    private func loadUsers() {
        NetworkService.fetchedUsers { fetchedUsers in
            if let fetchedUsers = fetchedUsers {
                DispatchQueue.main.async {
                    self.users = fetchedUsers
                }
            }
        }
    }
}
