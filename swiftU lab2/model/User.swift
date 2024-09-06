//
//  User.swift
//  swiftU lab2
//
//  Created by Ahmed El Gndy on 22/08/2024.
//

import Foundation
import SwiftUI

struct User: Codable,Identifiable {
    let id, name, about, email: String
    
}

typealias Users = [User]



