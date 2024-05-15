//
//  vakandi_appApp.swift
//  vakandi-app
//
//  Created by Administrador on 21/04/24.
//

import SwiftUI

@main
struct vakandi_appApp: App {
    @StateObject private var appRootManager = AppRootManager()
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch appRootManager.currentRoot {
                case .splash:
                    Text("Splash")
                    
                case .authentication:
                    LoginView()
                case .home:
                    MainTabView(selectedTab: 1)
                }
            }
            .environmentObject(appRootManager)
        }
    }
}
