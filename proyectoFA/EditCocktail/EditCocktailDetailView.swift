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
    @State  var imageUrl: String = ""
    
    var cocktail: CocktailModel
    var editViewModel: EditCocktailViewModelType
    
    init(cocktail: CocktailModel) {
        self.cocktail = cocktail
        self.editViewModel = EditCocktailViewModel()
    }
    
    var body: some View {
        VStack {
            TextField("Ingresa el nombre del cocktail", text: $editedName)
                .padding(.bottom)
                .onAppear {
                    editedName = cocktail.name
                }
            TextField("Ingresa los ingredientes", text: $editedIngredients)
                .padding(.bottom)
                .onAppear {
                    editedIngredients = cocktail.ingredients.joined(separator: ", ")
                }
            TextField("Ingresa los pasos a seguir", text: $editedRecipe)
                .padding(.bottom)
                .onAppear {
                    editedRecipe = cocktail.receip?.joined(separator: ", ") ?? ""
                }
            TextField("Ingresa la url de la imagen", text: $imageUrl)
                .padding(.bottom)
                .onAppear {
                    imageUrl = cocktail.receip?.joined(separator: ", ") ?? ""
                }
            
            Spacer()
            
            Button {
                let editedCocktail = CocktailModel(
                    id: cocktail.id,
                    name: editedName,
                    ingredients: editedIngredients.components(separatedBy: ", "),
                    receip: editedRecipe.components(separatedBy: ", "),
                    image: imageUrl
                )
                Task {
                    await editViewModel.edit(cocktailAEditar: editedCocktail)
                }
            } label: {
                Text("Editar")
                    .padding()
                    .foregroundStyle(Color.white)
                    .background(Color.blue)
            }
            
            Button {
                Task {
                    await editViewModel.delete(cocktailABorrar: self.cocktail)
                }
            } label: {
                Text("Borrar")
                    .padding()
                    .foregroundStyle(Color.white)
                    .background(Color.red)
            }
        }
        .padding()
    }
}

struct EditCocktailDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        return EditCocktailDetailView(
            cocktail: .init(
                name: "Alfonso 13",
                ingredients: [])
        )
    }
}
