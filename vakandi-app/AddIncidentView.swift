//
//  AddIncidentView.swift
//  vakandi-app
//
//  Created by Administrador on 29/04/24.
//

import SwiftUI

struct AddIncidentView: View {
    @State private var title: String = ""
    @State private var cellphone: String = ""
    @State private var description: String = ""
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Form {
                    Section(header: Text("Información general")) {
                        TextField(text: $title, prompt: Text("titulo*")) {
                            
                        }
                        TextField(text: $description, prompt: Text("descripción"), axis: .vertical) {
                            
                        }.lineLimit(3, reservesSpace: true)
                        TextField(text: $cellphone, prompt: Text("teléfono*")) {
                            
                        }
                        TextField(text: $cellphone, prompt: Text("email")) {
                            
                        }
                        CategoryView()
                    }
                    Section {
                       
                        ImagePickerView()
                    }.frame(maxWidth: 300)
                    Section {
                        Button {
                            save()
                        } label: {
                            Text("Guardar")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                    .frame(height: 50)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .bold))
                                    .background(.black)
                                    .cornerRadius(16)
                             
                        }.buttonStyle(.plain)
                    }
                }
            }.navigationTitle("Nuevo incidente")
        }.navigationBarTitleDisplayMode(.inline).alert(isPresented: $showAlert) {
            Alert(title: Text(""), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }
    
    func save() {
        // Here you can implement your login logic
        if title.isEmpty || cellphone.isEmpty {
            alertMessage = "Por favor, introduce el titulo y un número de teléfono"
            showAlert = true
        } else {
            // Your login logic goes here
            // For simplicity, I'm just showing an alert
            alertMessage = "Se ha guardado correctamente"
            showAlert = true
            
           
                                          
           
        }
    }
}

struct AddIncidentView_Previews: PreviewProvider {
    static var previews: some View {
        AddIncidentView()
    }
}
