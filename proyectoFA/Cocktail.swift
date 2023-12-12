//
//  Cocktail.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 27/11/23.
//

import SwiftUI
struct CocktailList:Identifiable, Hashable {
    var id = UUID()
    var image: String
    var name: String
}

struct CocktailListModel{
    let section1: [CocktailList] = [
        CocktailList(image: "drink1", name: "Mojito"),
        CocktailList(image: "drink2", name: "Paloma"),
        CocktailList(image: "drink3", name: "Whisky"),
        CocktailList(image: "drink4", name: "Negroni"),
    ]
    let section2: [CocktailList] = [
        CocktailList(image: "drink5", name: "Manhattan"),
        CocktailList(image: "drink6", name: "Daiquiri"),
        CocktailList(image: "drink7", name: "Margarita"),
        CocktailList(image: "drink8", name: "Bloody Mary"),
    ]
    let section3: [CocktailList] = [
        CocktailList(image: "drink9", name: "Gin"),
        CocktailList(image: "drink10", name: "Piña Colada"),
        CocktailList(image: "drink11", name: "Carajillo"),
        CocktailList(image: "drink12", name: "Mezcal"),
    ]
}

struct Cocktail: View {
    let viewModel = CocktailListModel()
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
                                NavigationLink(destination: CocktailDetailView()){
                                    VStack {
                                        Image(cocktail.image)
                                            .resizable()
                                            .scaledToFit()
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
                            ForEach(viewModel.section2){ cocktail in
                                NavigationLink(destination: CocktailDetailView()){
                                    VStack {
                                        Image(cocktail.image)
                                            .resizable()
                                            .scaledToFit()
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
                                NavigationLink(destination: CocktailDetailView()){
                                    VStack {
                                        Image(cocktail.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: UIScreen.main.bounds.width, height: 200)
                                        Text(cocktail.name)
                                            .font(.caption)
                                            .foregroundColor(.black)
                                    }                 

                                }
                                
                            }
                        }
                    }
                    
                }
            }
        }
    }
}
struct Cocktail_Previews: PreviewProvider {
    static var previews: some View {
        return Group {
            Cocktail()
            Cocktail()
        }
    }
}
