//
//  CocktailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 14/12/23.
//

import Foundation

struct CocktailListModel {
    
    var section1: [CocktailModel] = [
        CocktailModel(name: "Mojito",
                      ingredients: [
                        .init(name: "60 ml de ron blanco"),
                        .init(name: "60 ml de leche de coco"),
                        .init(name: "60 ml de zumo de piña"),
                        .init(name: "15 ml de zumo de lima"),
                        .init(name: "22 ml de sirope de azúcar"),
                      ],
                      receip: "En una batidora de vaso (si no tienes se puede usar de mano) mezcla una parte de ron blanco, una parte de crema o leche de coco y una de zumo de piña, preferiblemente natural. Si usas uno comercial evita el nectar, que tiene más azúcares. Añade zumo de lima (15 ml) y, si no has usado una leche de coco o un zumo que lleve azúcar añadido, 22 ml de sirope de azúcar. Se mezcla todo en la batidora con unos 180 ml de hielo picado hasta lograr la consistencia de un batido y se sirve en una de piña colada (aunque se puede poner en cualquier vaso alto y ancho). La decoración clásica del cóctel manda presentarlo con un trozo de piña natural, una sombrilla y una pajita", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink1"),
        CocktailModel(name: "Paloma", ingredients: [], receip: "", tags: [], image: "drink2"),
        CocktailModel(name: "Whisky", ingredients: [], receip: "", tags: [], image: "drink3"),
        CocktailModel(name: "Negroni", ingredients: [], receip: "", tags: [], image: "drink4")
    ]
    var section2: [CocktailModel] = [
        
        CocktailModel(name: "Manhattan",
                      ingredients: [
                        .init(name: "60 ml de ron blanco"),
                        .init(name: "60 ml de leche de coco"),
                        .init(name: "60 ml de zumo de piña"),
                        .init(name: "15 ml de zumo de lima"),
                        .init(name: "22 ml de sirope de azúcar"),
                      ],
                      receip: "En una batidora de vaso (si no tienes se puede usar de mano) mezcla una parte de ron blanco, una parte de crema o leche de coco y una de zumo de piña, preferiblemente natural. Si usas uno comercial evita el nectar, que tiene más azúcares. Añade zumo de lima (15 ml) y, si no has usado una leche de coco o un zumo que lleve azúcar añadido, 22 ml de sirope de azúcar. Se mezcla todo en la batidora con unos 180 ml de hielo picado hasta lograr la consistencia de un batido y se sirve en una de piña colada (aunque se puede poner en cualquier vaso alto y ancho). La decoración clásica del cóctel manda presentarlo con un trozo de piña natural, una sombrilla y una pajita", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink5"
                     ),
        CocktailModel(name: "Daiquiri",
                      ingredients: [
                        .init(name: "60 ml de ron blanco"),
                        .init(name: "60 ml de leche de coco"),
                        .init(name: "60 ml de zumo de piña"),
                        .init(name: "15 ml de zumo de lima"),
                        .init(name: "22 ml de sirope de azúcar"),
                      ],
                      receip: "En una batidora de vaso (si no tienes se puede usar de mano) mezcla una parte de ron blanco, una parte de crema o leche de coco y una de zumo de piña, preferiblemente natural. Si usas uno comercial evita el nectar, que tiene más azúcares. Añade zumo de lima (15 ml) y, si no has usado una leche de coco o un zumo que lleve azúcar añadido, 22 ml de sirope de azúcar. Se mezcla todo en la batidora con unos 180 ml de hielo picado hasta lograr la consistencia de un batido y se sirve en una de piña colada (aunque se puede poner en cualquier vaso alto y ancho). La decoración clásica del cóctel manda presentarlo con un trozo de piña natural, una sombrilla y una pajita", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink6"
                     ),
        CocktailModel(name: "Margarita", ingredients: [], receip: "", tags: [], image: "drink7"),
        CocktailModel(name: "Bloody Mary", ingredients: [], receip: "", tags: [], image: "drink8")
    ]
    var section3: [CocktailModel]
    
    init() {
        var cocktail: CocktailModel = CocktailModel(
            ingredients: [
                .init(name: "60 ml de ron blanco"),
                .init(name: "60 ml de leche de coco"),
                .init(name: "60 ml de zumo de piña"),
                .init(name: "15 ml de zumo de lima"),
                .init(name: "22 ml de sirope de azúcar"),
            ],
            tags: [
                "Alcoholic",
                "Cocktail",
                "Highball glass"
            ]
        )
        
        cocktail.receip = "Test"
        
        
        section3 = [
            cocktail, cocktail, cocktail
        ]
    }
    
    /*
    mutating func requestInfoFromBackend() {
        section3 = [
            CocktailModel(
                name: "Carajillo",
                ingredients: [
                    .init(name: "30 ml cafe expreso"),
                    .init(name: "30 ml licor del 43")
                ],
                tags: [
                    "Alcoholic",
                    "Cocktail",
                    "Cafe"
                ]
            )
        ]
    }
     */
}
