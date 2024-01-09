//
//  NetworkingLayer.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 04/01/24.
//

import Foundation

class NetworkingLayer {
    
    func getRecipes() async throws -> CocktailsResponse {
        let myEndpoint: String = "https://fastapi-production-6595.up.railway.app/recipes"
        let url = URL(string: myEndpoint)
        let request = URLRequest(url: url!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let result = try JSONDecoder().decode(CocktailsResponse.self, from: data)
        return result
    }
}
