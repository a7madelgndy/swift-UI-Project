//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Ahmed Ashraf on 24/08/2024.
//

import SwiftUI

@main
struct swiftU_lab2App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                WeatherView(viewModel: WeatherViewModel())
            }
        }
    }
}
