//
//  ImagePickerView.swift
//  vakandi-app
//
//  Created by Administrador on 30/04/24.
//
import PhotosUI
import SwiftUI

struct ImagePickerView: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    
    var body: some View {
        VStack {
            PhotosPicker("Selecciona una imagen...", selection: $avatarItem, matching: .images)
            
            avatarImage?
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
        }.onChange(of: avatarItem) { newValue in
            Task {
                if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                                   avatarImage = loaded
                               } else {
                                   print("Failed")
                               }
            }
        }
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
