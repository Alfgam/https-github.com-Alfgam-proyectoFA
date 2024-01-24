//
//  CocktailDetailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 07/12/23.
//

import Foundation

class CocktailDetailViewModel: ObservableObject {
    
    // Estado para gestionar la selección de las pestañas
    @Published var sectionSelected: SectionOption = .ingredient {
        didSet {
            changeSelection(sectionSelected: sectionSelected)
        }
    }
    let sectionsOptions: [SectionOption] = [.ingredient, .receipt, .history]
    @Published var details: [Details]
    
    // Cóctel por defecto con datos de ejemplo
    @Published var cocktail: CocktailModel
    
    init(cocktail: CocktailModel){
        //details = cocktail.ingredients
        self.details = []
        self.cocktail = cocktail
    }
    
    private func changeSelection(sectionSelected: SectionOption) {
        switch sectionSelected {
        case .ingredient:
            details = []
        case .receipt:
            details = []
            for receip in cocktail.receip ?? [] {
                details.append(.init(name: receip))
            }
        case .history:
            details = [
                .init(name: "Una breve descripción de la historia de la piña colada")
            ]
        }
    }
}
