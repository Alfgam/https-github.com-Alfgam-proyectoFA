//
//  CocktailViewModel.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 14/12/23.
//

import Foundation


struct CocktailListModel{
    
    let section1: [CocktailModel] = [
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
    
    let section2: [CocktailModel] = [
        
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
                      image:"drink6",
                      history: "Podemos llamarlo Papa Doble, Hemingway Daiquiri o Hemingway Special. Y es que el famoso escritor (y amante del alcohol) sufría hemocratosis, por lo que ideó una variante con menos azúcar pero el doble de ron. Cuando Ernest viajaba a Floridita en la Habana solía pedir su daiquiri de esta manera y así fue como nació el Ernst Special."),
        
        CocktailModel(name: "Margarita",
                      ingredients: [
                        .init(name: "60 ml de tequila blanco o reposado"),
                        .init(name: "40 ml. de triple seco o de licor de naranja"),
                        .init(name: "60 ml zumo de lima"),
                        .init(name: "Sal y sirope de azúcar (para adornar la copa en su superficie)"),
                        .init(name: "Hielo"),
                        .init(name: "Copa de boca ancha para cóctel Margarita"),
                      ],
                      receip: "Primero decoraremos el borde de sal. Cogemos un vaso ancho y ovalado (el clásico de margarita) lo mojamos en un poco de sirope de azúcar presionando y a continuación, lo pasamos por un plato con sal, colocamos la lima y reservamos.Exprimimos las limas para extraer su zumo, puedes utilizar un prensador de limas que resulta de lo más útil pero también te sirve cualquier exprimidor que utilices para limones o naranjas. En nuestro caso no colamos el zumo, aunque si cae alguna pepita la retiramos.Con la ayuda del vaso medidor vertemos en la coctelera el zumo de lima recién exprimido, el tequila, y el triple seco, en este orden.Metemos cuatro o cinco cubos de hielo y agitamos bien durante unos 15 segundo, con brío y arte. Luego servimos el cóctel con ayuda del filtro de la propia coctelera o el colador en el vaso que tenemos preparado anteriormente.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink7",
                      history: "La historia del nombre viene después, y aunque como siempre existen varias teorías y leyendas al respecto, la oficial y más conocida es la de Danny Baljeique (conocido barman francés que trabajaba en el Casino Riviera del Pacífico) que estaba enamorado de Majorie King, una actriz americana que odiaba el tequila de la manera en la que lo toman los mexicanos, a palo seco. Para cortejarla, Danny inventó este trago y no sabemos si a ella conseguiría enamorarla, pero al resto del mundo nos robó el corazón."),
        
        CocktailModel(name: "Bloody Merry",
                      ingredients: [
                        .init(name: "150 mililitros de zumo de tomate natural o preparado"),
                        .init(name: " 60 mililitros de vodka (opcional)"),
                        .init(name: "10 mililitros de zumo de limón"),
                        .init(name: "3 gotas de salsa Perrins"),
                        .init(name: "3 gotas de salsa de Tabasco"),
                        .init(name: "Una pizca de sal"),
                        .init(name: "Una pizca de pimienta negra molida"),
                        .init(name: "Hielo"),
                        .init(name: "2 ramas de apio"),
                      ],
                      receip: "Debemos introducir en su interior el hielo hasta 3/4 partes de su capacidad y removerlo con la ayuda de una cuchara, remueve durante un minuto para ir enfriando el recipiente. Cuando termines, cuela el agua que se ha ido generando para que no quede aguado.A continuación, vierte la parte proporcional del zumo de tomate y el vodka y mézclalo bien. Si no quieres que contenga alcohol, remplaza los 60 ml de vodka por más zumo de tomate. El resultado será un poco más suave, pero el sabor será prácticamente igual.Exprime los 10 mililitros de zumo de limón e introdúcelo en la mezcla para darle un toque ácido que nos aleje del dulzor del tomate.Ahora es el momento de condimentarlo. Este paso es orientativo, ya que debe condimentarse según los gustos personales y en base a la tolerancia al picante. Sin embargo, normalmente para estas cantidades se suelen echar tres gotas de salsa Perrins y tres gotas de salsa de Tabasco. También, debemos añadir una pizca de sal que potencie el sabor y una pizca de pimienta negra recién molida.Con la mezcla ya hecha, no debes esperar mucho, ya que los hielos se derretirán y se podría aguar el cóctel. Solo te queda servir en dos vasos la cantidad deseada y terminar decorando este delicioso cóctel con unas ramitas de apio a modo de ornamentación que, además, aportará un contraste de sabor perfecto. Destacamos que es un alimento del todo depurativo.¡Listo para servir el cóctel Bloody Mary! ",
                      tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink8",
                      history: "")
        ]
    let section3: [CocktailModel] = [
        
        CocktailModel(name: "Chill & Tonic",
                      ingredients: [
                        .init(name: "40 ml de Tanqueray Nº 10 infusionado con flores relajantes"),
                        .init(name: "10 ml Vermut blanco"),
                        .init(name: "60 ml agua quina"),
                        .init(name: "5 gm flores relajantes"),
                        .init(name: "1 twist de limón verde"),
                      ],
                      receip: "Vaciar el Tanqueray en un recipiente, agregando los 5g de flores. Dejar reposar e infusionar de 3 a 5 minutos. Colar en copa old fashioned con el cubo de hielo. Agregar 10 ml de vermut. Revolver, Agregar agua quina, Garnish con twist de limón verde y flores de manzanilla", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink9",
                      history: ""),
        CocktailModel(name: "Piña Colada",
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
                      image:"drink10",
                      history: ""),
        CocktailModel(name: " Carajillo",
                      ingredients: [
                        .init(name: "50 ml Licor 43 Original "),
                        .init(name: "1 cafe expreso caliente"),
                        .init(name: "Cubitos de hielo"),
                        
                      ],
                      receip: "Sirve cubitos de hielo hasta la mitad de una copa y agrega Licor 43.Agrega café espresso caliente y mezcla.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink11",
                      history: ""),
        CocktailModel(name: "Mezcalita",
                      ingredients: [
                        .init(name: "1 taza de agua de jamaica"),
                        .init(name: "1/2 taza de mezcal"),
                        .init(name: "1/4 taza de jugo de limón"),
                        .init(name: "1 cucharada de jarabe de agave"),
                        .init(name: "Hielo"),
                      ],
                      receip: "Mezcla el agua de jamaica, mezcal, jugo de limón y jarabe de agave en una coctelera.Agrega hielo y agita vigorosamente.Sirve en un vaso con hielo y decora con una rodaja de limón y un poco de menta fresca.", tags: [
                        "Alcoholic",
                        "Cocktail",
                        "Highball glass"
                      ],
                      image:"drink12",
                      history: ""),
    ]
}
