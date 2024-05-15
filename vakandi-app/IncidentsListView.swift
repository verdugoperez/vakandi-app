//
//  IncidentsListView.swift
//  vakandi-app
//
//  Created by Administrador on 26/04/24.
//

import SwiftUI

struct IncidentsView: View {
    @State private var searchText = ""
    @State private var isShowingNewIncidentScreen = false
  
   
    
    let incidents: [Incident] = [
        Incident(title: "Error de red", severity: .high, serviceType: "Red"),
        Incident(title: "Servidor caído", severity: .high, serviceType: "Servidor"),
        Incident(title: "Problema de seguridad", severity: .high, serviceType: "Seguridad"),
        Incident(title: "Base de datos inaccesible", severity: .medium, serviceType: "Base de Datos"),
        Incident(title: "Aplicación no responde", severity: .medium, serviceType: "Aplicación"),
        Incident(title: "Dispositivo no reconocido", severity: .medium, serviceType: "Dispositivo"),
        Incident(title: "Error de configuración", severity: .low, serviceType: "Configuración"),
        Incident(title: "Problema de rendimiento", severity: .low, serviceType: "Rendimiento"),
        Incident(title: "Actualización fallida", severity: .low, serviceType: "Actualización"),
        Incident(title: "Fallo de autenticación", severity: .medium, serviceType: "Autenticación")
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                SearchBarView(text: $searchText)
                Text("5 incidentes").padding(.leading, 16).bold()
                
                ScrollView {
                    ForEach(incidents) { incident in
                        LazyVStack {
                            NavigationLink {
                                IncidentDetailView(title: incident.title, severity: incident.severity, id: String("\(incident.id)".prefix(5))).navigationTitle(incident.title).navigationBarTitleDisplayMode(.inline)
                            } label: {
                                IncidentCardView(id: String("\(incident.id)".prefix(5)), title: incident.title, settlement: "Vistas del lago", service: incident.serviceType, registeredDate: "Mayo 23, 9:00 AM", status: "Finalizado", severityType: incident.severity
                                )
                            }.buttonStyle(.plain)
                         
                        }
                    }
                }
            }.padding(16).navigationTitle("Incidentes").toolbar {
                NavigationLink {
                    AddIncidentView()
                } label: {
                    Image(systemName: "plus.circle.fill")
                }

            }
            
        }.navigationTitle("Incidentes")
    }
}

struct IncidentsIView_Previews: PreviewProvider {
    static var previews: some View {
        IncidentsView()
    }
}
