//
//  CocktailMdel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 14/12/23.
//

import Foundation

// Modelo para representar un ingrediente en un cóctel
struct Details: Decodable, Identifiable, Hashable {
    var name: String
    let id = UUID()
}

struct CocktailsResponse: Decodable {
    
    let cocktails: [CocktailModel]
}

// Modelo para representar un cóctel
struct CocktailModel: Decodable, Identifiable, Hashable, Encodable {
    var id: Int
    let name: String
    var ingredients: [String]
    var receip: [String]?
    var tags: [String]?
    let image: String?
    var history: String?
  
    init(id: Int? = nil, name: String = "Bebida", ingredients: [String], receip: [String]? = nil, tags: [String]? = nil, image: String? = nil, history: String = "") {
        self.id = id ?? 0
        self.name = name
        self.ingredients = ingredients
        self.receip = receip
        self.tags = tags
        self.image = image
        self.history = history
    }
    
    // Enum para personalizar las claves
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case ingredients = "ingredients"
        case receip = "recipet"
        case tags = "tags"
        case image = "image"
        case history = "history"
    }
}

enum SectionOption: String {
    case ingredient = "Ingredients"
    case receipt = "Receipt"
    case history = "History"
}
struct DeleteCocktailModel: Decodable {
    var message: String
    

}
