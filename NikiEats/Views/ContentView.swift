//
//  ContentView.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 24/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RecipesList()
    }
}

#Preview {
    ContentView()
    .environment(ModelData())
}
