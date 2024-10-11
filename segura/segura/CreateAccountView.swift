import SwiftUI

struct CreateAccountView: View {
     @State private var Nombre: String = ""
     @State private var Apellido: String = ""
     @State private var Email: String = ""
     @State private var Contraseña: String = ""
     @State private var ConfContraseña: String = ""
     @State private var isPasswordVisible: Bool = false
     @State private var isChecked: Bool = false
     var body: some View {
         NavigationView(content: {
             ZStack{
                 Color(red: 223/255,
                       green: 116/255,
                       blue: 125/255)
                     .ignoresSafeArea()
                 VStack{
                     Text("Crear una Cuenta")
                         .foregroundColor(.white)
                         .fontWeight(.bold)
                         .font(.system(size:30))
                     ZStack{
                         Rectangle()
                             .cornerRadius(40)
                             .foregroundColor(.white)
                             .ignoresSafeArea()
                         VStack{
                             
                             TextField("Nombre", text: $Nombre)
                                 .padding(.horizontal, 10)
                                 .padding(.vertical, 30.0)
                                 .overlay(Divider().padding(.horizontal,10), alignment: .bottom)
                             TextField("Apellido", text: $Apellido)
                                 .padding(.horizontal, 10)
                                 .padding(.vertical, 30.0)
                                 .overlay(Divider().padding(.horizontal,10), alignment: .bottom)
                             TextField("E-mail", text: $Email)
                                 .padding(.horizontal, 10)
                                 .padding(.vertical, 30.0)
                                 .overlay(Divider().padding(.horizontal,10), alignment: .bottom)
                             HStack{
                                 if isPasswordVisible{
                                     TextField("Contraseña", text: $Contraseña)
                                         .padding(.horizontal, 10)
                                         .padding(.vertical, 30.0)
                                     
                                 } else{
                                     SecureField("Contraseña", text: $Contraseña)
                                         .padding(.horizontal, 10)
                                         .padding(.vertical, 30.0)
                                 }
                                 Button(action:{self.isPasswordVisible.toggle()}){
                                     Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                         .foregroundColor(.gray)
                                         .padding(.horizontal)
                                 }
                                 
                                 
                             }
                             .overlay(Divider().padding(.horizontal,10), alignment: .bottom)
                             HStack{
                                 if isPasswordVisible{
                                     TextField("Confirmar contraseña", text: $ConfContraseña)
                                         .padding(.horizontal, 10)
                                         .padding(.vertical, 30.0)
                                     
                                 } else{
                                     SecureField("Confirmar Contraseña", text: $ConfContraseña)
                                         .padding(.horizontal, 10)
                                         .padding(.vertical, 30.0)
                                 }
                                 Button(action:{self.isPasswordVisible.toggle()}){
                                     Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                         .foregroundColor(.gray)
                                         .padding(.horizontal)
                                 }
                                     
                             }
                             .overlay(Divider().padding(.horizontal,10), alignment: .bottom)
                             
                             Button(action: {
                                 
                             }){
                                 NavigationLink(destination: Home()) {
                                     Text("Crear Cuenta")
                                         .font(.system(size: 25, weight:.medium))
                                         .foregroundColor(.white)
                                         .padding()
                                         .background(Color(red:0.95, green: 0.77, blue: 0.75))
                                         .cornerRadius(30)
                                         .offset(y:30)
                                 }
                                 
                             }
                             HStack{
                                 Button(action: {
                                 isChecked.toggle() // Cambiar el estado al hacer clic
                                 }) {
                                     Image(systemName: isChecked ? "checkmark.circle.fill" : "checkmark.circle")
                                     .foregroundColor(Color(red: 223/255, green: 116/255, blue: 125/255))
                                     .padding(.leading, 6.0)
                                                 }
                                 Text("He leido los ")
                                     .padding(.horizontal,-5.0)
                                     .padding(.vertical, 30.0)
                                 Text("términos y condiciones")
                                     .foregroundColor(Color(red: 223/255,
                                                      green: 116/255,
                                                      blue: 125/255))
                                 
                                 
                             }
                             HStack{
                                 Text("¿Ya tienes una cuenta?")
                                     .padding(.horizontal,-7.0)
                                     .padding(.bottom, 0)
                                 NavigationLink(destination: LoginView()) {
                                     Text(" Iniciar sesión")
                                         .foregroundColor(Color(red: 223/255,
                                                                green: 116/255,
                                                                blue: 125/255))
                                 }
                                 
                             }
                             
                             
                         }
                         
                         
                         
                     }
                 }
                 
             }
         })
         .navigationBarBackButtonHidden(true)
     }
 }

#Preview {
    CreateAccountView()
}
