//
//  RecipeRow.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 28/10/2024.
//

import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            Text(recipe.name)
            Spacer()
            if recipe.isFavourite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let recipes = ModelData().recipes
    
    return Group {
        RecipeRow(recipe: recipes[0])
        RecipeRow(recipe: recipes[1])
    }
}
