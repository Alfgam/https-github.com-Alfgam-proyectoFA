//
//  EditCocktailDetailView.swift
//  proyectoFA
//
//  Created by Alfonso Gamboa  on 07/02/24.
//

import SwiftUI

struct EditCocktailDetailView: View {
   
    @State  var editedName: String = ""
    @State  var editedIngredients: String = ""
    @State  var editedRecipe: String = ""
    var cocktail: CocktailModel
    var editViewModel: EditCocktailViewModelType
    
    init(cocktail: CocktailModel) {
        self.cocktail = cocktail
        self.editViewModel = EditCocktailViewModel()
    }
  
    var body: some View {
        VStack {
            TextField("Ingresa el nombre del cocktail", text: $editedName)
                .onAppear { editedName = cocktail.name }
            TextField("Ingresa los ingredientes", text: $editedIngredients)
                .onAppear { editedIngredients = cocktail.ingredients.joined(separator: ", ") }
            TextField("Ingresa los pasos a seguir", text: $editedRecipe)
                .onAppear { editedRecipe = (cocktail.receip?.joined(separator: ", "))! }
            
            Spacer()
            
            Button {
                let editedCocktail = CocktailModel(
                    id: cocktail.id,
                    name: editedName,
                    ingredients: editedIngredients.components(separatedBy: ", "),
                    receip: editedRecipe.components(separatedBy: ", ")
                )
                Task {
                    await editViewModel.edit(cocktailAEditar: editedCocktail)
                }
            } label: {
                Text("Editar")
            }
            
            Button {
                Task {
                    await editViewModel.delete(cocktailABorrar: self.cocktail)
                }
            } label: {
                Text("Borrar")
            }

        }
    }
}
