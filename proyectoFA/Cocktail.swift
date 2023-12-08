//
//  Cocktail.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 27/11/23.
//

import SwiftUI
struct Cocktail: View {
    var body: some View {
        VStack{
            Text("MIXOLOGICAL")
                .font(.headline)
                .foregroundColor(.black)
            
            
            ScrollView {
                VStack {
                    
                    ScrollView(.horizontal) {
                        HStack {
                            // Contenido Horizontal
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Mojito")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink2")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Mezcal")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Gin")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink4")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Ron")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                    }
                    
                    ScrollView(.horizontal) {
                        HStack {
                            // Contenido Horizontal
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink5")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Mojito")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink6")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Mezcal")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink7")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Gin")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink8")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Ron")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            // Contenido Horizontal
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink9")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Mojito")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink10")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Mezcal")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink11")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Carajillo")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            NavigationLink(destination: CocktailDetailView()) {
                                VStack {
                                    
                                    Image("drink12")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: UIScreen.main.bounds.width, height: 200)
                                    
                                    Text("Ron")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


struct Cocktail_Previews: PreviewProvider {
    static var previews: some View {
        return Group {
            Cocktail()
            Cocktail()
        }
    }
}
