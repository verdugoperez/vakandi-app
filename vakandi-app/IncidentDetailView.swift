//
//  IncidentDetailView.swift
//  vakandi-app
//
//  Created by Administrador on 03/05/24.
//

import SwiftUI

struct IncidentDetailView: View {
    @State private var selectedTab = 0
    
    var title: String
    var severity: SeverityType
    var id: String
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedTab) {
                Text("Detalle").tag(0)
                Text("Mapa").tag(1)
                
            }
            .pickerStyle(.segmented).padding(.bottom, 8)
            
            if selectedTab == 0 {
                Group {
                    HStack {
                        Text("Servicio afectado")
                        Spacer()
                        Text("puerta principal")
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Severidad/Prioridad")
                        Spacer()
                        SeverityView(severity: severity)
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Ticket ID")
                        Spacer()
                        Text("#\(id)")
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Causa raíz")
                        Spacer()
                        Text("Cable cortado")
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Cliente afectado")
                        Spacer()
                        Text("Vistas del lago etapa #6")
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Ubicación")
                        Spacer()
                        Text("Culiacán, Sinaloa")
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Fecha de registro")
                        Spacer()
                        Text("10 febrero, 11:20am")
                    }.padding(.vertical, 8)
                    Divider()
                    HStack {
                        Text("Fecha propuesta de solución")
                        Spacer()
                        Text("13 febrero")
                    }.padding(.vertical, 8)
                }.padding(.horizontal, 8)
            } else {
                CustomMapView().navigationTitle("Ubicación").navigationBarTitleDisplayMode(.inline)
            }
            Spacer()
        }
    }
}

#Preview {
    IncidentDetailView(title: "", severity: .low, id: "123")
}
