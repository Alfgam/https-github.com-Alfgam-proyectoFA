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
                        .init(name: "1 cucharada de azúcar"),
                        .init(name: "Jugo de medio limón"),
                        .init(name: "Hojas de menta fresca"),
                        .init(name: "1/4 taza de ron blanco"),
                        .init(name: "3 cubos de hielo"),
                        .init(name: "1/2 taza de agua mineral"),
                        .init(name: "Ramitas de menta fresca para decorar (opcional)"),
                        
                      ],
                      receip: "En un vaso, mezclar las hojitas de menta con el jugo de limón y el azúcar. Agregar el ron junto con los cubos de hielo. Luego, echar el agua mineral y revolver. Decorar con una ramita de menta y una rodaja de limón.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink1",
                      history: ""),
        
        CocktailModel(name: "Paloma",
                      ingredients: [  .init(name: "60 ml de tequila"),
                                      .init(name: "60 ml de jugo de limon"),
                                      .init(name: "60 ml de refresco de toronja"),
                                      .init(name: "1 pizca de sal"),
                                      .init(name: "Hielo"),
                      ],
                      receip: "Escarcha un vaso alto con la sal. Para hacerlo, empapa la abertura del vaso con limón y cúbrelo con sal, ésta debe pegarse formando una capa en el borde. Añade tres rocas de hielo en el vaso y vacía el tequila junto con el zumo de limón. La proporción son dos partes de tequila por media parte de limón. A continuación agrega al vaso el refresco, que puedes sustituir por jugo de toronja, y mezcla suavemente. La proporción sería de 6 partes de refresco.Decora el vaso con unas rodajas de lima y ¡a disfrutar!", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image: "drink2",
                      history: ""),
        CocktailModel(name: "Whisky Sour",
                      ingredients: [  .init(name: "30 ml de whisky"),
                                      .init(name: "30 ml de jugo de limon"),
                                      .init(name: "1 cda sopera de azucar"),
                                      .init(name: "1 rodaja de limon"),
                                      .init(name: "5 cubos de Hielo"),
                      ],
                      receip: "Vierte en una coctelera el whisky, el zumo de limón y el azúcar (en ese orden). Bate enérgicamente durante unos segundos hasta que se disuelva el azúcar y los líquidos se enfríen.Pasa el contenido de la coctelera a un vaso corto que contenga dos cubos de hielo. Decora con una guinda o cereza.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image: "drink3",
                      history: ""),
        CocktailModel(name: "Negroni",
                      ingredients: [  .init(name: "30 ml de Campari"),
                                      .init(name: "30 ml de ginebra"),
                                      .init(name: "30 ml de vermut rojo"),
                                      .init(name: "Cascara de naranja"),
                                      .init(name: "Hielo"),
                      ],
                      receip: "Añade todos los ingredientes a tu coctelera excepto la corteza de naranja y mézclalo durante unos pocos segundos.Sírvelo en una copa con hielo y la corteza de naranja y ya lo tienes.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image: "drink4", history: ""),
        
        
        
        
    ]
    var section2: [CocktailModel] = [

        
        CocktailModel(name: "Manhattan",
                      ingredients: [
                        .init(name: "60 ml de bourbon"),
                        .init(name: "30 ml de vermut rojo"),
                        .init(name: "2 gotas de Angostura"),
                        .init(name: "6 cubitos de hielo"),
                        .init(name: "1 cereza"),
                        .init(name: "Piel de naranja"),
                      ],
                      receip: "Llenamos un vaso mezclador con 5 o 6 cubitos de hielo y añadimos 60 ml de bourbon, 30 ml de vermut rojo dulce y 2 gotas de Angostura.Mezclamos suavemente los ingredientes hasta que estén bien combinados usando una cuchara mezcladora.Una vez mezclados y con un color uniforme, enfriamos una copa de cóctel. Para ello, echamos dos cubitos de hielo, los giramos sobre la copa con cuidado, los retiramos y escurrimos bien el agua que hayan dejado.A continuación, servimos el Manhattan desde el vaso mezclador colando la mezcla para no echar el hielo.Agregamos 1 cereza confitada dentro de la copa y la decoramos con una piel de naranja que colocaremos en el borde.Pinchamos otra cereza confitada en una brocheta de cóctel, que colocaremos sobre el borde de la copa, y lo servimos bien frío.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink5",
                      history: "")
        ,
        CocktailModel(name: "Daiquiri",
                      ingredients: [
                        .init(name: "70 ml de ron blanco"),
                        .init(name: "50 ml de zumo de lima"),
                        .init(name: "30 ml de sirope de azúcar"),
                        .init(name: "Hielo y una copa de combinado de boca ancha"),
                        .init(name: "Una rodajita de lima para decorar"),
                      ],
                      receip: "Solo tiene tres ingredientes zumo de lima, ron y sirope de azúcar (que contrarresta el dulzor del azúcar y el alcohol). Es un cóctel bastante potente para el que necesitarás:70 ml la proporción de alcohol, en este caso ron, es la proporción más alta, 50 ml de zumo de lima (también puedes utilizar pulco de limón, pero en este caso tendrás que añadir un poco más de azúcar ya que es demasiado ácido),30 ml de sirope de azúcar . Agítalo en una coctelera y sírvelo bien fresquito. Si el ron está en la nevera mejor que mejor, así no tendrás que poner hielo. Esperamos que tanto si te gusta Hemingway como si no, el daiquiri te salga como siempre de rechupete.",
                      tags: [
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
