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
                    .font(.system(size:20))
                    .padding(.trailing,150.0)
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .ignoresSafeArea()
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
                                Image(systemName: "xmark")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20) // Ajusta el tamaño según sea necesario
                                    .foregroundColor(.black) // Color del ícono
                                    .padding(.top, -215.0)
                                    .padding(.trailing, 70.0)

                                Text("Confiada")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .font(.system(size:20))
                                    .padding(.top, -215.0)
                                    .padding(.trailing, 95.0)
                            }
                            
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150) // Ajusta el tamaño según sea necesario
                                .foregroundColor(.green) // Color del ícono
                                .padding(.top,-150) // Espaciado adicional si lo desea

                            
                            Button(action: {
                                
                            }){
                                Text("Volver a iniciar")
                                    .font(.system(size: 25, weight:.medium))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 25.0)
                                    .padding(.vertical, 17.003)
                                    .background(Color(red:0.95, green: 0.77, blue: 0.75))
                                    .cornerRadius(30)
                                    .offset(y:150)
                                
                            }
                            Button(action: {
                                
                            }){
                                Text("Continuar con voz")
                                    .font(.system(size: 25, weight:.medium))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 18.0)
                                    .padding(.vertical, 15.0)
                                    .background(Color(red:0.95, green: 0.77, blue: 0.75))
                                    .cornerRadius(30)
                                    .offset(y:190)
                                
                            }
                        }
                    }
                    ZStack{
                        
                        Rectangle()
                            .frame(width: 800, height: 100) // Establecer dimensiones del cuadrado
                            .foregroundColor(Color(red:255/255,
                                green: 250/255,
                                blue: 250/255))
                            .position(x: 5, y: 730) // Ubicación exacta (coordenadas)
                            .ignoresSafeArea()
                    }
                }
            }
        }
    }
}

#Preview {
    ReconocimientoFacial()
}
