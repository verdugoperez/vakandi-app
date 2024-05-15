//
//  Incident.swift
//  vakandi-app
//
//  Created by Administrador on 04/05/24.
//

import Foundation

struct Incident: Identifiable {
    var id = UUID()
    let title: String
    let severity: SeverityType
    let serviceType: String
    
}
