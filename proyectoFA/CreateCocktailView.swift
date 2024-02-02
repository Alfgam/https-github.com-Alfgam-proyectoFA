//
//  CreateCocktail.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 01/02/24.
//

import SwiftUI

struct CreateCocktailView: View {
    
    @State var name: String = ""
    @State var ingredients: String = ""
    @State var recipet: String = ""
    
    var body: some View {
        VStack {
            TextField("Ingresa el nombre del cocktail", text: $name)
            TextField("Ingresa los ingredientes separados por comas", text: $ingredients)
            TextField("Ingresa los pasos a seguir de la receta separados por comas", text: $recipet)
            Spacer()
            Button {
                let listRecipet = recipet.components(separatedBy: ",")
                let listIngredients: [String] = ingredients.components(separatedBy: ",")
                let cocktailName = name
                let cocktail = CocktailModel(
                    name: cocktailName,
                    ingredients: listIngredients,
                    receip: listRecipet
                )
                Task {
                    do {
                        _ = try await NetworkingLayer().add(cocktail: cocktail)
                    } catch {
                        print("\(error)")
                    }
                }
            } label: {
                Text("Guardar")
            }
        }
    }
}

#Preview {
    CreateCocktailView()
}
