//
//  CocktailDetailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 07/12/23.
//

import Foundation

enum SectionOption: String {
    case ingredient = "Ingredients"
    case receipt = "Receipt"
    case history = "History"
}

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
    var cocktail: CocktailModel = .init(
        name: "Piña colada",
        ingredients: [
            .init(name: "60 ml de ron blanco"),
            .init(name: "60 ml de leche de coco"),
            .init(name: "60 ml de zumo de piña"),
            .init(name: "15 ml de zumo de lima"),
            .init(name: "22 ml de sirope de azúcar"),
        ],
        receip: "En una batidora de vaso (si no tienes se puede usar de mano) mezcla una parte de ron blanco, una parte de crema o leche de coco y una de zumo de piña, preferiblemente natural. Si usas uno comercial evita el nectar, que tiene más azúcares. Añade zumo de lima (15 ml) y, si no has usado una leche de coco o un zumo que lleve azúcar añadido, 22 ml de sirope de azúcar. Se mezcla todo en la batidora con unos 180 ml de hielo picado hasta lograr la consistencia de un batido y se sirve en una de piña colada (aunque se puede poner en cualquier vaso alto y ancho). La decoración clásica del cóctel manda presentarlo con un trozo de piña natural, una sombrilla y una pajita",
        tags: [
            "Alcoholic",
            "Cocktail",
            "Highball glass"
        ])
    
    init(){
        details = cocktail.ingredients
    }
    
    func changeSelection(sectionSelected: SectionOption) {
        switch sectionSelected {
        case .ingredient:
            details = cocktail.ingredients
        case .receipt:
            details = [
                Details(name: cocktail.receip)
            ]
        case .history:
            details = [
                .init(name: "Una breve descripción de la historia de la piña colada")
            ]
        }
    }
}
