//
//  ReconocimientoFacial.swift
//  segura
//
//  Created by iOS Lab on 11/10/24.
//

import SwiftUI

struct ReconocimientoFacial: View {
    var body: some View {
        ZStack{
            Color(red: 223/255,
                  green: 116/255,
                  blue: 125/255)
            .ignoresSafeArea()
            VStack{
                Text("Reconocimiento facial")
                    .foregroundColor(.white)
                    .font(.system(size:25))
                    .padding(.top, 20.0)
                    .padding(.trailing,130.0)
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 450, height: 690) // Establecer
                        .position(x: 198, y: 350)
                    ZStack{
                        Rectangle()
                            .cornerRadius(40)
                            .frame(width: 350, height: 350) // Establecer dimensiones del cuadrado
                            .foregroundColor(Color(red:232/255,
                                                   green: 232/255,
                                                   blue: 232/255))
                            .position(x: 198, y: 220)
                        
                        VStack{
                            HStack{
                                NavigationLink(destination: InterviewView()) {
                                    Image(systemName: "xmark")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.black)
                                        .padding(.trailing, 66.0)
                                }
                                Text("Confiada")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .font(.system(size:20))
                            }
                            .padding(.trailing, 90.0)
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150) // Ajusta el tamaño según sea necesario
                                .foregroundColor(.green) // Color del ícono
                                .padding(.top,40) // Espaciado adicional si lo desea
                            
                            
                            Button(action: {
                                
                            }){
                                Text("Volver a iniciar")
                                    .font(.system(size: 25, weight:.medium))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 25.0)
                                    .padding(.vertical, 17.003)
                                    .background(Color(red:0.95, green: 0.77, blue: 0.75))
                                    .cornerRadius(30)
                                
                            }
                            .padding(.top, 120)
                            Button(action: {
                                
                            }){
                                NavigationLink(destination: ReconocimientoVoz()) {
                                    Text("Continuar con voz")
                                        .font(.system(size: 25, weight:.medium))
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 18.0)
                                        .padding(.vertical, 15.0)
                                        .background(Color(red:0.95, green: 0.77, blue: 0.75))
                                        .cornerRadius(30)
                                }
                            }
                            .padding(.top, 30)
                        }
                    }
                }
            
                Spacer()
                //Barra de navegación
                HStack{
                    Spacer()
                    Image(systemName: "doc.text")
                        .foregroundStyle(Color.gray)
                    
                    Spacer()
                    NavigationLink(destination: InterviewView()) {
                        Image(systemName: "square.grid.2x2")
                            .foregroundStyle(Color(red:223/255,
                                green: 116/255,
                                blue:125/255))
                    }
                    
                    Spacer()
                    NavigationLink(destination: Home()) {
                        Image(systemName: "house")
                            .foregroundStyle(Color.gray)
                    }
                    
                    Spacer()
                    NavigationLink(destination: Perfil()){
                        Image(systemName: "person")
                            .foregroundStyle(Color.gray)
                    }
                    Spacer()
                    Image(systemName: "rectangle.grid.1x2")
                        .foregroundStyle(Color.gray)
                    
                    Spacer()
                }
                .padding(.vertical, 15)
                .background(Color(.systemGray6))
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ReconocimientoFacial()
}
