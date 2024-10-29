//
//  Perfil.swift
//  segura
//
//  Created by iOS Lab on 11/10/24.
//
import SwiftUI

struct Perfil: View {
    var body: some View {
        NavigationView(content: {
            ZStack{
                Color(red: 223/255, green: 116/255, blue: 125/255)
                    .ignoresSafeArea()
                VStack{
                    Text("Perfil")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .padding(.top, 20)
                        .padding(.bottom,120)
                    ZStack{
                        Rectangle()
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .ignoresSafeArea()
                        HStack{
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width: 100,height: 100)
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fill)
                                .padding(.top)
                                .foregroundColor(.gray)
                            VStack{
                        Text("Doris Elena")
                                    
                                    .font(.system(size: 20))
                                    .padding(.trailing, 50.0)
                        Text("Ingeniería en Sistemas Compuatcionales")
                                    .padding(.leading, 30.0)
                            }//vstack
                        }//hstack
                        VStack{
                            
                        }
                    }//zstack
                }//vstack
            }//ZSTACK
        })
    }
}

#Preview {
    Perfil()
}
