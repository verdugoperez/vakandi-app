//
//  SearchBarView.swift
//  vakandi-app
//
//  Created by Administrador on 29/04/24.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundStyle(Colors.brandTertiary)
            TextField("Buscar...", text: $text)
               
                .onTapGesture {
                    self.isEditing = true
                }
 
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
 
                }) {
                    Text("Cancelar")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }.padding(7)
            .padding(.horizontal, 25)
            .cornerRadius(8)
            .background(.white)
            .overlay{
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Colors.brandTertiary,lineWidth: 1)
            }
            
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant(""))
    }
}
