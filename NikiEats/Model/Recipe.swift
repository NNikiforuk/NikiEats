//
//  Recipe.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 28/10/2024.
//

import Foundation

struct Recipe: Hashable, Codable, Identifiable {
    var name: String
    var kcal: Int
    var b: Int
    var ingredients: [String]
    var recipe: [String]
    var id: Int
    var isFavourite: Bool
}



