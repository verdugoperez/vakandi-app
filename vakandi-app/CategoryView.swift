//
//  CategoryView.swift
//  vakandi-app
//
//  Created by Administrador on 30/04/24.
//

import SwiftUI

struct CategoryView: View {
    var categories = ["Seguridad", "Mantenimiento", "Quejas de los residentes", "Problemas de limpieza"]
    @State private var selectedCategory = ""
    
    var body: some View {
       
            Picker("Tipo de servicio", selection: $selectedCategory) {
                ForEach(categories, id: \.self) {
                    Text($0)
                }
            }.foregroundColor(.gray)
          //  .pickerStyle(.segmented)
    }
}

#Preview {
    CategoryView()
}
