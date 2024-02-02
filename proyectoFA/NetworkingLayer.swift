//
//  NetworkingLayer.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 04/01/24.
//

import Foundation

class NetworkingLayer {
    
    func getRecipes() async throws -> [CocktailModel] {
        let myEndpoint: String = "https://fastapi-production-6595.up.railway.app/cocktail"
        let url = URL(string: myEndpoint)
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let (data, _) = try await URLSession.shared.data(for: request)
        do {
            let result = try JSONDecoder().decode([CocktailModel].self, from: data)
            return result
        } catch {
            print("fail updating this cocktail with error: \(error)")
            print("Instead backend response with: \(String(data: data, encoding: .utf8) ?? "")")
            return []
        }
    }
    
    func addCocktail(name: String) async throws -> Bool {
        let myEndpoint: String = "https://fastapi-production-6595.up.railway.app/cocktail"
        let url = URL(string: myEndpoint)
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "accept")
        request.httpBody = try JSONSerialization.data(withJSONObject: getCocktailDefaultWithOptionals(name: name), options: .prettyPrinted)
        let (data, _) = try await URLSession.shared.data(for: request)
        let result = try JSONDecoder().decode(CocktailModel.self, from: data)
        return !result.name.isEmpty
    }
    
    func add(cocktail: CocktailModel) async throws -> Bool {
        let myEndpoint: String = "https://fastapi-production-6595.up.railway.app/cocktail"
        let url = URL(string: myEndpoint)
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "accept")
        request.httpBody = try JSONEncoder().encode(cocktail)
        let (data, _) = try await URLSession.shared.data(for: request)
        let result = try JSONDecoder().decode(CocktailModel.self, from: data)
        return !result.name.isEmpty
    }
    
    func updateCocktail(id: String) async throws -> Bool {
        let url = URL(string: "https://fastapi-production-6595.up.railway.app/cocktail/\(id)")
        var request = URLRequest(url: url!)
        request.httpMethod = "PUT"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "accept")
        request.httpBody = try JSONSerialization.data(withJSONObject: getOtherCocktailDefault())
        let (data, _) = try await URLSession.shared.data(for: request)
        do {
            let result = try JSONDecoder().decode(CocktailModel.self, from: data)
            return !result.name.isEmpty
        } catch {
            print("fail updating this cocktail with error: \(error)")
            print("Instead backend response with: \(String(data: data, encoding: .utf8) ?? "")")
            return false
        }
    }
    
    func deleteCocktail(cocktailID: Int) async throws -> Bool {
        let myEndpoint = "https://fastapi-production-6595.up.railway.app/cocktail/\(cocktailID)"
        var request = URLRequest(url: URL(string: myEndpoint)!)
        request.httpMethod = "DELETE"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let result = try JSONDecoder().decode(DeleteCocktailModel.self, from: data)
        return !result.message.isEmpty
    }
    
    private func getCocktailDefault(name: String = "Alfonso Gamboa") ->  [String : Any] {
        return [
            "id": 8,
            "name": name,
            "ingredients": [
                "bourbon or rye whiskey",
                "simple syrup",
                "lemon juice",
                "orange slice or cherry"
            ],
            "recipet": [
                "Fill a shaker with ice cubes.",
                "Add whiskey, simple syrup, and lemon juice to the shaker.",
                "Shake well and strain into a rocks glass filled with ice.",
                "Garnish with an orange slice or cherry."
            ],
            "history": "The Whiskey Sour is a classic cocktail that dates back to the mid-19th century.",
            "tags": [
                "rocks glass",
                "whiskey",
                "casual"
            ],
            "image": "https://firebasestorage.googleapis.com/v0/b/mixology-af57f.appspot.com/o/christmas_champagne_cocktail.jpg?alt=media&token=9b7da4d4-cd8d-4a48-97c2-da2836e0d339"
        ]
    }
    
    private func getCocktailDefaultWithOptionals(name: String = "Alfonso Gamboa") ->  [String : Any] {
        return [
            "name": name,
            "ingredients": [
                "bourbon or rye whiskey",
                "simple syrup",
                "lemon juice",
                "orange slice or cherry"
            ],
            "recipet": [
                "Fill a shaker with ice cubes.",
                "Add whiskey, simple syrup, and lemon juice to the shaker.",
                "Shake well and strain into a rocks glass filled with ice.",
                "Garnish with an orange slice or cherry."
            ]
        ]
    }
    
    private func getOtherCocktailDefault() ->  [String : Any] {
        return [
            "id": 5,
            "name": 906090,
            "ingredients": [
                "bourbon or rye whiskey",
                "simple syrup",
                "salt",
                "lemon juice",
            ],
            "recipet": [
                "Go to buy a milk box",
                "Fill a shaker with ice cubes.",
                "Add whiskey, simple syrup, and lemon juice to the shaker.",
                "Shake well and strain into a rocks glass filled with ice.",
                "Garnish with an orange slice or cherry."
            ],
            "history": "The Brandy Sour is a classic cocktail that dates back to the mid-19th century.",
            "tags": [
                "rocks glass",
                "whiskey",
                "casual"
            ],
            "image": "esta deberia ser una url"
        ]
    }
}
