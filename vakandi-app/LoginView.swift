//
//  LoginView.swift
//  vakandi-app
//
//  Created by Administrador on 21/04/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = "1@2.com"
    @State private var password: String = "123456"
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var isShowingDetailView = false
    @State private var isShowingProgressView = false
    
    @EnvironmentObject private var appRootManager: AppRootManager

    var body: some View {
       
            VStack {
                Image("logo").resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 150)

                TextField("Teléfono", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(5)
                    .padding(.bottom, 20)

                SecureField("Contraseña", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(5)
                    .padding(.bottom, 20)

                Button(action: {
                    self.login()
                }) {
                    HStack {
                        if isShowingProgressView {
                            ProgressView().tint(.white).frame(width: 30, height: 30)
                        } else {
                            Text("Iniciar sesión")
                        }
                    }.frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.horizontal, 8)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold))
                        .background(.black)
                        .cornerRadius(16)
                   
                }
              

                Spacer()
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        
    }

    func login() {
        // Here you can implement your login logic
        if username.isEmpty || password.isEmpty {
            alertMessage = "Por favor, introduce tu número de teléfono y contraseña."
            showAlert = true
        } else {
            // Your login logic goes here
            // For simplicity, I'm just showing an alert
           // alertMessage = "Inicio de sesión exitoso"
           // showAlert = true
            isShowingProgressView = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute:  {
                withAnimation(.easeOut) {
                    appRootManager.currentRoot = .home
                }
            })
                                          
           
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

