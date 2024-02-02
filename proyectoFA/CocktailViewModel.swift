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
            section3 = recipes
        } catch {
            print("fail obtained all cocktails")
        }
    }
    
    func addNewCocktail() async -> Void {
        do {
            let recipeCreated = try await NetworkingLayer().addCocktail(name: "Alfonso 13")
            if recipeCreated {
                await self.requestInfoFromBackend()
            }
        } catch {
            print("fail creating a new cocktail")
        }
    }
    
    func updateCocktail() async -> Void {
        do {
            let recipeUpdated = try await NetworkingLayer().updateCocktail(id: "5")
            if recipeUpdated {
                await self.requestInfoFromBackend()
            }
        } catch {
            print("fail updating this cocktail with error: \(error)")
        }
    }
    
    func deleteCocktail() async -> Void {
        do{
            let recipeDelete = try await NetworkingLayer().deleteCocktail(cocktailID: 3)
            if recipeDelete{
                await self.requestInfoFromBackend()
            }
        }catch {
            print("Fail delete")
        }
    }
}
