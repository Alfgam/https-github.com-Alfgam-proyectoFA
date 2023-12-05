//
//  Cocktail.swift
//  proyectoFA
//
//  Created by Luis Fernando Bustos Ramírez on 27/11/23.
//

import SwiftUI
struct Cocktail: View {
    var body: some View {
        
        Text("MIXOLOGICAL")
            .font(.footnote)
            .foregroundColor(.blue)
        
        ScrollView {
            VStack {
                
                ScrollView(.horizontal) {
                    HStack {
                        // Contenido Horizontal
                        
                        NavigationLink(destination: Text("Alfonso")) {
                            
                            Image("drink1") //
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200)
                                .padding()
                        }
                        Image("drink2")//
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink3") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink4") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                    
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        // Contenido Horizontal
                        
                        Image("drink5") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink6") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink7") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink8") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                    
                }
                ScrollView(.horizontal) {
                    HStack {
                        // Contenido Horizontal
                        
                        Image("drink9") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink10") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink11") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                        Image("drink12") //
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                }
            }
        }
        
    }
}


