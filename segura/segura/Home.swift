//
//  Home.swift
//  segura
//
//  Created by iOS Lab on 07/10/24.
//

import SwiftUI

struct Home: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            Color(red: 223/255, green: 116/255, blue: 125/255)
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color(red: 255/255, green: 250/255, blue: 250/255))
                    .frame(height: 650)
                    .frame(width: 400)
                    .offset(y:100)
                    .padding(.horizontal, 20)
            }
            
            VStack() {
                // Saludo
                HStack {
                    Text("  Hola de nuevo, Doris")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                
                HStack {
                    TextField("Buscar", text: $searchText)
                        .padding(10)
                        .background(Color(.white))
                        .cornerRadius(8)
                        .frame(width: 350)
                        .padding(.horizontal, 10)
                    
                }
                .padding(.top, 10)
                
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color(red: 223/225, green: 116/255, blue: 125/255))
                    .frame(height: 150)
                    .frame(width: 350)
                    .overlay(
                        VStack(alignment: .leading) { Text("Noticias") .font(.system(size: 16, weight: .regular)) .foregroundColor(.white)
                            
                            Text("Mira las noticias preparadas para ti") .font(.system(size: 18, weight: .bold)) .foregroundColor(.white) .padding(.top, 5)
                            HStack {
                                Image(systemName: "play.circle.fill") .foregroundColor(.white)
                                Text("Mirar") .foregroundColor(.white)
                            }
                            .padding(.top, 10)
                        }
                        .padding()
                    )
                    .padding(.top, 80)
                
                Spacer()
                
                
                
                Spacer()
                //Barra de navegación
                HStack{
                    Spacer()
                    Image(systemName: "doc.text")
                        .foregroundStyle(Color.gray)
                    
                    Spacer()
                    NavigationLink(destination: InterviewView()) {
                        Image(systemName: "square.grid.2x2")
                            .foregroundStyle(Color.gray)
                    }
                    
                    Spacer()
                    Image(systemName: "house")
                        .foregroundStyle(Color(red: 223/255,
                            green: 116/255,
                            blue:125/255))
                    
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
            .navigationBarBackButtonHidden(true)
            
        }
        
    }
}

#Preview {
    Home()
}
