//
//  CocktailDetail.swift
//  proyectoFA
//
//  Created by Alfonso Gamboa  on 04/12/23.
//
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
struct CocktailDetailView: View {
    
    @StateObject private var viewModel: CocktailDetailViewModel = CocktailDetailViewModel()
    
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
                                    Text(viewModel.cocktail.name)
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
                        Picker("Section", selection: $viewModel.sectionSelected) {
                            ForEach(viewModel.sectionsOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        
                        // Contenido dinámico basado en la selección de pestañas
                        if (viewModel.sectionSelected == "Ingredients") {
                            // Lista de ingredientes
                            List(viewModel.cocktail.ingredients, id: \.name) { ingredient in
                                Text(ingredient.name)
                            }
                            .listStyle(PlainListStyle())
                            .listRowSeparator(.hidden)
                        } else {
                            // ScrollView para mostrar la receta
                            ScrollView {
                                Text(viewModel.cocktail.receip)
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
                            ForEach(viewModel.cocktail.tags, id: \.self) { tag in
                                Text(tag)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .frame(width: (geometry.size.width / CGFloat(viewModel.cocktail.tags.count)) - 20)
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
        return CocktailDetailView()
    }
}

