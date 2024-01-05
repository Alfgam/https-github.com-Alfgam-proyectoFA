//
//  NetworkingLayer.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 04/01/24.
//

import Foundation

class NetworkingLayer {
    
    func getRecipes() async throws -> String {
        let myEndpoint: String = "https://fastapi-production-6595.up.railway.app/recipes"
        let url = URL(string: myEndpoint)
        let request = URLRequest(url: url!)
        let (data, response) = try await URLSession.shared.data(for: request)
        let result = String(bytes: data, encoding: .utf8)
        //let result = try JSONDecoder().decode(String.self, from: data)
        return result ?? "empty"
    }
}
