//
//  ReconocimientoVoz.swift
//  segura
//
//  Created by iOS Lab on 11/10/24.
//

import SwiftUI

struct ReconocimientoVoz: View {
    var body: some View {ZStack{
        Color(red: 223/255,
              green: 116/255,
              blue: 125/255)
        .ignoresSafeArea()
        VStack{
            Text("Reconocimiento de voz")
                .foregroundColor(.white)
                .font(.system(size:20))
                .padding(.trailing,150.0)
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .position(x: 196, y: 350)
                ZStack{
                    Rectangle()
                        .cornerRadius(40)
                        .frame(width: 350, height: 290) // Establecer dimensiones del cuadrado
                        .foregroundColor(Color(red:232/255,
                                               green: 232/255,
                                               blue: 232/255))
                        .position(x: 198, y: 190)
                    
                    VStack{
                        HStack{
                            Image(systemName: "xmark")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20) // Ajusta el tamaño según sea necesario
                                .foregroundColor(.black) // Color del ícono
                                .padding(.trailing, 70.0)
                            Text("Nerviosa")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .font(.system(size:20))
                                .padding(.trailing, 95.0)
                        }
                        .padding(.top, 30)
                        
                        HStack{
                            Image(systemName: "waveform.path")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 90) // Ajusta el tamaño según sea necesario
                                .foregroundColor(.orange) // Color del ícono
                            
                        }
                        .padding(.top,50)
                        Button(action: {
                            
                        }){
                            Text("Volver a iniciar")
                                .font(.system(size: 25, weight:.medium))
                                .foregroundColor(.white)
                                .padding(17.003)
                                .background(Color(red:0.95, green: 0.77, blue: 0.75))
                                .cornerRadius(30)
                            
                        }
                        .padding(.top, 160)
                        Button(action: {
                            
                        }){
                            //NavigationLink(destination: () ){
                            Text("Continuar con entrevista")
                                .font(.system(size: 25, weight: .medium))
                                .foregroundColor(.white)
                                .padding(13.0)
                                .background(Color(red: 0.95, green: 0.77, blue: 0.75))
                                .cornerRadius(30)
                            //}
                        }
                        .padding(.top, 50)
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
                Image(systemName: "square.grid.2x2")
                    .foregroundStyle(Color(red: 223/255,
                        green: 116/255,
                        blue:125/255))
                
                Spacer()
                Image(systemName: "house")
                    .foregroundStyle(Color.gray)
                
                Spacer()
                Image(systemName: "person")
                    .foregroundStyle(Color.gray)
                
                Spacer()
                Image(systemName: "rectangle.grid.1x2")
                    .foregroundStyle(Color.gray)
                
                Spacer()
            }
            .padding(.vertical, 15)
            .background(Color(.systemGray6))
            }
        }
    }
}

#Preview {
    ReconocimientoVoz()
}
