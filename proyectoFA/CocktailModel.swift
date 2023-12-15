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
    var id = UUID()
    var name: String
    var ingredients: [Details]
    var receip: String
    var tags: [String]
    var image: String
}

enum SectionOption: String {
    case ingredient = "Ingredients"
    case receipt = "Receipt"
    case history = "History"
}
