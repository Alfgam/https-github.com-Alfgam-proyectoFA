//
//  CocktailMdel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 14/12/23.
//

import Foundation

// Modelo para representar un ingrediente en un cóctel
struct Details: Identifiable, Hashable {
    var name: String
    let id = UUID()
}

// Modelo para representar un cóctel
struct CocktailModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    var ingredients: [Details]
    var receip: String?
    var tags: [String]
    let image: String?
    var history: String
  
    init(name: String = "Bebida", ingredients: [Details], receip: String? = nil, tags: [String], image: String? = nil, history: String = "") {
        self.name = name
        self.ingredients = ingredients
        self.receip = receip
        self.tags = tags
        self.image = image
        self.history = history
    } 
}

enum SectionOption: String {
    case ingredient = "Ingredients"
    case receipt = "Receipt"
    case history = "History"
}
