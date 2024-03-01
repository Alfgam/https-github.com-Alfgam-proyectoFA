//
//  CocktailImage.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 29/02/24.
//

import SwiftUI

struct CocktailImage: View {
    
    @State private var imageCocktailView: Image = Image("drink1", bundle: nil)
    let imageCocktail: String?
    
    var body: some View {
        imageCocktailView
            .resizable()
            .scaledToFill()
            .onAppear {
                Task {
                    if let imageString = imageCocktail, //Validamos que la imagen exista
                       let imageUrl = URL(string: imageString), //Validamos que este contenido sea una url
                       let imageData = try? await downloadImageData(from: imageUrl), //Validamos que esta url tenga datos
                       let image = UIImage(data: imageData) //Validamos que estos datos sean una imagen
                    {
                        imageCocktailView = Image(uiImage: image)
                    }
                }
            }
    }
    
    func downloadImageData(from url: URL) async throws -> Data {
        let request = URLRequest(url: url)
        let (data, _) = try await URLSession.shared.data(for: request)
        return data
    }
}
