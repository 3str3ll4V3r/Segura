import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var contraseña: String = ""
    @State private var isPasswordVisible: Bool = false
    var body: some View {
        NavigationView(content: {
            ZStack{
                Color(red: 223/255, green: 116/255, blue: 125/255)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("Bienvenida")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .padding(.top, 20)
                            .padding(.bottom,50)
                    }
                    ZStack{
                        Rectangle()
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .ignoresSafeArea()
                    
                    VStack{
                        TextField("Email", text: $email)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 20)
                            .padding(.bottom,40)
                            .overlay(
                                Divider()
                                    .padding(.horizontal,40), alignment: .bottom
                            )
                            .padding(.horizontal, 10)
                            .padding(.bottom,50)
                        
                        HStack{
                            if isPasswordVisible {
                                TextField("Contraseña", text: $contraseña)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .padding(.bottom, 40)
                            } else {
                                SecureField("Contraseña", text: $contraseña)
                                    .padding(.horizontal, 40)
                                    .padding(.vertical, 10)
                                    .padding(.bottom, 40)
                            }
                            Button(action: {
                                self.isPasswordVisible.toggle()
                            }) {
                                Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                            }
                        }//hstack
                        .overlay(
                            Divider()
                                .padding(.horizontal,40), alignment: .bottom
                        )
                        .padding(.horizontal, 10)
                        .padding(.bottom,40)
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: Home()) {
                                Text("Iniciar Sesión")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    .frame(width: 340, height: 55.012)
                                    .background(Color(red: 0.95, green: 0.77, blue: 0.75))
                                    .cornerRadius(60)
                                    .shadow(radius: 1.5)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top,25)
                        
                        HStack{
                            Text("¿No tienes cuenta?")
                            NavigationLink(destination: CreateAccountView()) {
                                Text("Crea una")
                            }
                                .foregroundColor(Color(red: 223/255, green: 116/255, blue: 125/255))
                        }
                        .padding(.top, 50)
                    }
                    }
                   // .background(Color(.white))
                    
                }
                
            }//zstack grande
        })
        
    }
}
#Preview {
    LoginView()
}
