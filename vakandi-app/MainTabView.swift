//
//  MainTabView.swift
//  vakandi-app
//
//  Created by Administrador on 26/04/24.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTab: Int

    var body: some View {
        TabView {
            IncidentsView()
                .tabItem {
                    Label("Incidentes", systemImage: "list.bullet")
                }.tag(1)
           
            AccountView()
                .tabItem {
                    Label("Mi cuenta", systemImage: "person.crop.circle")
                }.tag(2)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(selectedTab: 1)
    }
}
