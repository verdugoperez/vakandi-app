//
//  AppRootManager.swift
//  vakandi-app
//
//  Created by Administrador on 28/04/24.
//

import Foundation

final class AppRootManager: ObservableObject {
    
    @Published var currentRoot: eAppRoots = .authentication
    
    enum eAppRoots {
        case splash
        case authentication
        case home
    }
}
