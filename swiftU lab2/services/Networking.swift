//
//  NetWork.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
//

import Foundation
import UIKit

struct NetworkService {
    static func fetchedUsers(completion: @escaping ([User]?) -> Void) {
        let urlString = "https://dl.dropboxusercontent.com/s/1y7yqdefyayegzo/employeelist.json?dl=0"

        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(nil)
                return
            }

            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let users = try JSONDecoder().decode(Users.self, from: data)
                completion(users)
            } catch {
                print("Error decoding data: \(error.localizedDescription)")
                completion(nil)
            }
        }

        task.resume()
    }
}

