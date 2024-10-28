//
//  RecipesList.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 28/10/2024.
//

import SwiftUI

struct RecipesList: View {
    @State private var showFavouritesOnly = false
    
    var filteresRecipes: [Recipe] {
        recipes.filter { recipe in
            !showFavouritesOnly || recipe.isFavourite
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filteresRecipes) { recipe in
                NavigationLink {
                    RecipeDetail(recipe: recipe)
                } label: {
                    RecipeRow(recipe: recipe)
                }
            }
            .navigationTitle("Recipes")
        } detail: {
            Text("Select recipe")
        }
    }
}

#Preview {
    RecipesList()
}
