//
//  Cocktail.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 27/11/23.
//

import SwiftUI

struct CocktailView: View {
    @StateObject var viewModel = CocktailListModel()
    var body: some View {
        VStack{
            Text("MIXOLOGICAL")
                .font(.headline)
                .foregroundColor(.black)
            ScrollView {
                VStack{
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.section1){ cocktail in
                                NavigationLink(destination: CocktailDetailView(cocktail: cocktail)){
                                    VStack {
                                        CocktailImage(imageCocktail: cocktail.image)
                                        Text(cocktail.name)
                                            .font(.caption)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                            }
                        }
                    }
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.section2){ cocktail in
                                NavigationLink(destination: CocktailDetailView(cocktail: cocktail)){
                                    VStack {
                                        CocktailImage(imageCocktail: cocktail.image)
                                            .frame(width: UIScreen.main.bounds.width, height: 200)
                                        Text(cocktail.name)
                                            .font(.caption)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                            }
                        }
                    }
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.section3){ cocktail in
                                NavigationLink(destination: CocktailDetailView(cocktail: cocktail)){
                                    VStack {
                                        CocktailImage(imageCocktail: cocktail.image)
                                            .frame(width: UIScreen.main.bounds.width, height: 200)
                                        Text(cocktail.name)
                                            .font(.caption)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                    }
                    Button {
                        Task {
                            await viewModel.requestInfoFromBackend()
                        }
                    } label: {
                        Text("Traer lista de cocteles")
                    }
                    Button {
                        Task {
                            await viewModel.addNewCocktail()
                        }
                    } label: {
                        Text("Crear uno nuevo")
                    }
                    Button {
                        Task {
                            await viewModel.updateCocktail()
                        }
                    } label : {
                        Text("Actualiza un cocktail")
                    }
                    Button {
                        Task {
                            await viewModel.deleteCocktail()
                        }
                    } label: {
                        Text("Borrar un cocktail")
                    }
                }
            }
            .onAppear{ Task {
                await viewModel.requestInfoFromBackend()
            }}
        }
    
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink(
                    destination: CreateCocktailView(),
                    label: {
                        Text("+🍹")
                    }
                )
            }
        }
    }
}
struct Cocktail_Previews: PreviewProvider {
    static var previews: some View {
        return Group {
            CocktailView()
        }
    }
}
