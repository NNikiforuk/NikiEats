//
//  NikiEatsApp.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 24/10/2024.
//

import SwiftUI

@main
struct NikiEatsApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
