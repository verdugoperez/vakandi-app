//
//  AccountView.swift
//  vakandi-app
//
//  Created by Administrador on 29/04/24.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject private var appRootManager: AppRootManager
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.easeOut) {
                    appRootManager.currentRoot = .authentication
                }
            } label: {
                Text("Cerrar sesión")
            }

        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
