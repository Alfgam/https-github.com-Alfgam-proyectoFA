//
//  CocktailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 14/12/23.
//

import Foundation


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
