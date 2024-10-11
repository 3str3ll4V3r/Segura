import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color(red: 223/255, green: 116/255, blue: 125/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Text("segura")
                        .font(.system(size: 65, weight: .bold))
                        .foregroundColor(.white)
                        .padding(20)
                        .offset(y:40)
                    
                    Spacer()
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(red: 255/255, green: 250/255, blue: 250/255))
                            .frame(height: 550)
                            .frame(width: 400)
                            .offset(y:100)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 20) {
                            NavigationLink(destination: LoginView()) {
                                Text("Iniciar sesión")
                                    .font(.system(size: 25, weight: .medium))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color(red: 0.95, green: 0.77, blue: 0.75))
                                    .cornerRadius(30)
                            }
                            .padding(.top, 70) // Ajusta el espaciado superior aquí

                            NavigationLink(destination: CreateAccountView()) {
                                Text("Registrarse")
                                    .font(.system(size: 25, weight: .medium))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color(red: 0.95, green: 0.77, blue: 0.75))
                                    .cornerRadius(30)
                            }
                            .padding(.top, 40) // Espacio entre los botones
                        }
                        .padding(.horizontal, 40)
                        .padding(.top, 100.0) // Espacio desde la parte inferior
                    }
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
