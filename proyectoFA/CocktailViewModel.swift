//
//  CocktailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 14/12/23.
//
import Foundation

class CocktailListModel: ObservableObject {
    
    @Published var section1: [CocktailModel]
    @Published var section2: [CocktailModel]
    @Published var section3: [CocktailModel]
    
    init() {
        var cocktail1 = CocktailModel(
            ingredients: [
                "60 ml de ron blanco",
                "60 ml de leche de coco",
                "60 ml de zumo de piña",
                "15 ml de zumo de lima",
                "22 ml de sirope de azúcar",
            ],
            tags: [
                "Alcoholic",
                "Cocktail",
                "Highball glass"
            ]
        )
        
        cocktail1.receip = ["Test"]
        
        section1 = [cocktail1, cocktail1, cocktail1]
        
        var cocktail2 = CocktailModel(
            ingredients: [
                "60 ml de ron blanco",
                "60 ml de leche de coco",
                "60 ml de zumo de piña",
                "15 ml de zumo de lima",
                "22 ml de sirope de azúcar",
            ],
            tags: [
                "Alcoholic",
                "Cocktail",
                "Highball glass"
            ]
        )
        cocktail2.receip = ["Test"]
        section2 = [cocktail2, cocktail2, cocktail2]
        var cocktail3 = CocktailModel(
            ingredients: [
                "60 ml de ron blanco",
                "60 ml de leche de coco",
                "60 ml de zumo de piña",
                "15 ml de zumo de lima",
                "22 ml de sirope de azúcar",
            ],
            tags: [
                "Alcoholic",
                "Cocktail",
                "Highball glass"
            ],
            image: "drink5"
        )
        
        cocktail3.receip = ["Test"]
        
        section3 = [cocktail3, cocktail3, cocktail3]
    }

    func requestInfoFromBackend() async -> Void {
        do {
            let recipes = try await NetworkingLayer().getRecipes()
            section3 = recipes.cocktails
        } catch {
            print("fail")
        }
    }
}
