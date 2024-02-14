//
//  CreateCocktailDetailView.swift
//  proyectoFA
//
//  Created by Alfonso Gamboa  on 07/02/24.
//

import SwiftUI
struct CreateCocktailDetailView: View {
   
    @State  var editedName: String = ""
    @State  var editedIngredients: String = ""
    @State  var editedRecipe: String = ""
            var cocktail: CocktailModel
    init(cocktail: CocktailModel) {
        self.cocktail = cocktail
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
                    do {
                        if try await NetworkingLayer().editCocktail(cocktail: editedCocktail) {
                            // Si la edición es exitosa, llama a la función de retorno para actualizar la lista en ContentView
                            
                        }
                    } catch {
                        print("Error al editar el cóctel: \(error)")
                    }
                }
            } label: {
                Text("Editar")
            }
            
            Button {
                
                
                Task {
                    do {
                        
                        if try await NetworkingLayer().deleteCocktail(objetoABorrar: cocktail) {
                           
                        }
                    } catch {
                        print("Error al borrar el cóctel: \(error)")
                    }
                }
            } label: {
                Text("Borrar")
            }

        }
    }
}
