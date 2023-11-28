//
//  ContentView.swift
//  proyectoFA
//
//  Created by Alfonso Gamboa  on 27/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @State var validName: Bool = true
    @State var password: String = ""
    @State var validLastname: Bool = true
    
    var body: some View {
        NavigationView{
            VStack {
                
                
                Image("Drink")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width)
                   
                VStack {
                    HStack {
                        Text("Ingrasa tu nombre")
                            .font(.callout)
                            .foregroundColor(.brown)
                        Spacer()
                        
                    }
                    TextField("Ingresa tu nombre", text: $name)
                        .foregroundColor(validName ? .mint : .mint)
                    
                    Divider()
                        .frame(height: 2)
                        .overlay(Color.brown)
                    HStack{
                        Text("Inserta tu contraseña")
                            .font(.callout)
                            .foregroundColor(.brown)
                        Spacer()
                    }
                    SecureField ("Inserta tu contraseña", text: $password)
                        .foregroundColor(validName ? .mint : .mint)
                    
                    Divider()
                        .frame(height: 2)
                        .overlay(Color.brown)
                }
                HStack{
                    Toggle("", isOn: $validLastname)
                        .dynamicTypeSize(.medium)
                        .frame(width: 55, alignment: .leading)
                        .foregroundColor(.mint)
                    Spacer()
                    Text("Recordarme")
                        .font(.headline)
                        .foregroundColor(.mint)
                    Spacer()
                    Text("¿Olvidaste tu contraseña?")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.mint)
                    
                }
                
                Button("Iniciar Sesion"){
        
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.brown)
                .padding()
                
                
                Spacer()
             
                Text("Terminos y condiciones")
                    .foregroundColor(.mint)
               
                
            }
        }
    }
}
