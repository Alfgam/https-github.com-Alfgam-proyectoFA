//
//  EditCocktailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 15/02/24.
//

import Foundation

struct EditCocktailViewModel: EditCocktailViewModelType {
    
    func edit(cocktailAEditar cocktail: CocktailModel) async -> Bool {
        do {
            if try await NetworkingLayer().editCocktail(cocktail: cocktail) {
                return true
            }
            return false
        } catch {
            print("Error al editar el cóctel: \(error)")
            return false
        }
    }
    
    func delete(cocktailABorrar cocktail: CocktailModel) async -> Bool {
        do {
            if try await NetworkingLayer().deleteCocktail(objetoABorrar: cocktail) {
                return true
            }
            return false
        } catch {
            print("Error al borrar el cóctel: \(error)")
            return false
        }
    }
}
