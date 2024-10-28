//
//  Recipe.swift
//  NikiEats
//
//  Created by Natalia Nikiforuk on 28/10/2024.
//

import Foundation

struct Recipe: Hashable, Codable {
    var name: String
    var kcal: String
    var b: String
    var ingredients: [String]
    var recipe: [String]
    var id: Int
}

