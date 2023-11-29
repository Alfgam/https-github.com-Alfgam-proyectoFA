//
//  Cocktail.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 27/11/23.
//

import SwiftUI

struct Cocktail: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
import SwiftUI

// Modelo para representar un ingrediente en un cóctel
struct Ingredient {
    var name: String
}

// Modelo para representar un cóctel
struct CocktailModel {
    var name: String
    var ingredients: [Ingredient]
    var receip: String
    var tags: [String]
}

// Vista que muestra los detalles de un cóctel, incluyendo su imagen, ingredientes, receta y etiquetas
struct CocktailDetail: View {
    
    // Cóctel por defecto con datos de ejemplo
    var cocktail: CocktailModel = .init(
        name: "Piña colada",
        ingredients: [
            .init(name: "60 ml de ron blanco"),
            .init(name: "60 ml de leche de coco"),
            .init(name: "60 ml de zumo de piña"),
            .init(name: "15 ml de zumo de lima"),
            .init(name: "22 ml de sirope de azúcar"),
        ],
        receip: "En una batidora de vaso (si no tienes se puede usar de mano) mezcla una parte de ron blanco, una parte de crema o leche de coco y una de zumo de piña, preferiblemente natural. Si usas uno comercial evita el nectar, que tiene más azúcares. Añade zumo de lima (15 ml) y, si no has usado una leche de coco o un zumo que lleve azúcar añadido, 22 ml de sirope de azúcar. Se mezcla todo en la batidora con unos 180 ml de hielo picado hasta lograr la consistencia de un batido y se sirve en una de piña colada (aunque se puede poner en cualquier vaso alto y ancho). La decoración clásica del cóctel manda presentarlo con un trozo de piña natural, una sombrilla y una pajita",
        tags: [
            "Alcoholic",
            "Cocktail",
            "Highball glass"
        ])
    
    // Estado para gestionar la selección de las pestañas
    @State var tabSelection = 0
    @State private var sectionSelected = "Ingredients"
    let sectionsOptions = ["Ingredients", "Receipt"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Vista principal
                VStack {
                    // Encabezado con imagen y nombre del cóctel
                    ZStack {
                        Image("Drink", bundle: nil)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: geometry.size.height * 2 / 5)
                            .clipped()
                        VStack {
                            Spacer()
                            VStack {
                                HStack {
                                    // Nombre del cóctel
                                    Text(cocktail.name)
                                        .padding()
                                        .foregroundStyle(.white)
                                        .font(.largeTitle)
                                    Spacer()
                                    // Botones para compartir y detalles adicionales
                                    Button {
                                    } label: {
                                        Image(systemName: "square.and.arrow.up")
                                            .foregroundColor(.white)
                                            .padding(5)
                                    }
                                    Button {
                                    } label: {
                                        Image(systemName: "wineglass")
                                            .foregroundColor(.white)
                                            .padding(5)
                                    }
                                }
                                Spacer()
                                    .frame(height: 10)
                            }
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                            )
                        }
                    }
                    .padding(.horizontal, -20)
                    .frame(height: geometry.size.height * 2 / 5)
                    
                    // Contenido principal con pestañas para cambiar entre ingredientes y receta
                    VStack {
                        Spacer()
                            .frame(height: 20)
                        Picker("Section", selection: $sectionSelected) {
                            ForEach(sectionsOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        
                        // Contenido dinámico basado en la selección de pestañas
                        if (sectionSelected == "Ingredients") {
                            // Lista de ingredientes
                            List(cocktail.ingredients, id: \.name) { ingredient in
                                Text(ingredient.name)
                            }
                            .listStyle(PlainListStyle())
                            .listRowSeparator(.hidden)
                        } else {
                            // ScrollView para mostrar la receta
                            ScrollView {
                                Text(cocktail.receip)
                            }
                        }
                    }
                }
                
                // Vista con etiquetas y borde
                VStack {
                    Spacer()
                        .frame(height: (geometry.size.height * 2  / 5) - 20 )
                    ScrollView(.horizontal, showsIndicators: false) {
                        // HStack para mostrar etiquetas
                        HStack(spacing: 0) {
                            ForEach(cocktail.tags, id: \.self) { tag in
                                Text(tag)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .frame(width: (geometry.size.width / CGFloat(cocktail.tags.count)) - 20)
                            }
                        }
                    }
                    .frame(height: 30)
                    .background(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 2, y: 1)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .strokeBorder(Color.black, lineWidth: 1)
                    )
                    Spacer()
                }
            }
            .padding()
        }
    }
}



struct CocktailDetail_Previews: PreviewProvider {
    static var previews: some View {
        return CocktailDetail()
    }
}
