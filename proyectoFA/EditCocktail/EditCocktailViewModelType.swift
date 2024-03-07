//
//  EditCocktailViewModelType.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 15/02/24.
//

import Foundation

protocol EditCocktailViewModelType {
    
    func edit(cocktailAEditar cocktail: CocktailModel) async -> Bool
    func delete(cocktailABorrar cocktail: CocktailModel) async -> Bool
}
