//
//  RecipesList.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 28/10/2024.
//

import SwiftUI

struct RecipesList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavouritesOnly = false
    
    var filteresRecipes: [Recipe] {
        modelData.recipes.filter { recipe in
            !showFavouritesOnly || recipe.isFavourite
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Favourites only")
                }
                ForEach(filteresRecipes) { recipe in
                    NavigationLink {
                        RecipeDetail(recipe: recipe)
                    } label: {
                        RecipeRow(recipe: recipe)
                    }
                }
            }
            .animation(.default, value: filteresRecipes)
            .navigationTitle("Recipes")
        } detail: {
            Text("Select recipe")
        }
    }
}

#Preview {
    RecipesList()
        .environment(ModelData())
}
