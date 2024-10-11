//
//  InterviewView.swift
//  segura
//
//  Created by iOS Lab on 09/10/24.
//

import SwiftUI

struct InterviewView: View {
    var body: some View {
        VStack(spacing: 0){
            //Rectangulo Sección Entrevistas
            ZStack{
                Color(red: 223/255,
                      green: 116/255,
                      blue:125/255)
                .frame(height: 150)
                
                Text("Entrevistas")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 30))
                    .padding(.leading, -180)
                    .padding(.bottom, -100)
            }
            
            //Pestañas Video, Voz, Entrevista
            HStack(spacing: 40){
                Text("Video")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.black)
                
                Text("Voz")
                    .foregroundStyle(Color.gray)
                
                Text("Entrevista")
                    .foregroundStyle(Color.gray)
            }
            .padding(.top, 20)
            
            //Indicaciones
            Text("En esta parte practicarás expresiones faciales")
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            
                Spacer()
            
            VStack(alignment: .center, spacing: 8){
                Text("Indicaciones")
                    .font(.headline)
                    .padding(.bottom, 10)
                
                Text("1. Busca un lugar bien iluminado y de preferencia que no haya nadie más")
                    .foregroundStyle(Color.black)
                
                Text("2. Intenta estar lo más relajada posible")
                    .foregroundStyle(Color.black)
            }
            .padding(.top, 20)
            .multilineTextAlignment(.center)
            
            //Botón de practicar
            Button(action: {
                
            }){
                Text("Practicar")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color( red: 223/255,
                                green: 116/255,
                                blue:125/255))
                    .cornerRadius(30)
                    .padding(.horizontal, 50)
            }
            .padding(.top, 120)
            
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
        .ignoresSafeArea()
    }
}


#Preview {
    InterviewView()
}
