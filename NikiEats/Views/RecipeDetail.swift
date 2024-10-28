//
//  RecipeDetail.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 28/10/2024.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            Image("fruits")
                .resizable()
                .frame(width: .infinity, height: 200)
            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.title)
                    .bold()
                HStack {
                    Label("KCAL: \(recipe.kcal)", systemImage: "carrot")
                        .font(.subheadline)
                    Label("B: \(recipe.b)", systemImage: "carrot")
                        .font(.subheadline)
                        .padding(.horizontal, 30)
                    Spacer()
                }
                Divider()
                VStack(alignment: .leading) {
                    Text("Składniki")
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 10)
                    ForEach(recipe.ingredients, id: \.self) {
                        Text($0)
                    }
                }
                VStack(alignment: .leading) {
                    Text("Przepis")
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 10)
                    ForEach(recipe.recipe, id: \.self) {
                        Text($0)
                    }
                }
                .padding(.vertical, 40)
            }
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
        .background(.yellow.opacity(0.45))
        Spacer()
            .navigationTitle(recipe.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RecipeDetail(recipe: recipes[1])
}
