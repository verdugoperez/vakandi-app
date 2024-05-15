//
//  IncidentCardView.swift
//  vakandi-app
//
//  Created by Administrador on 28/04/24.
//

import SwiftUI

struct IncidentCardView: View {
    let id: String
    let title: String
    let settlement: String
    let service: String
    let registeredDate: String
    let status: String
    let severityType: SeverityType
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Label {
                                Text(registeredDate)
                            } icon: {
                                Image(systemName: "clock.fill")
                            }.foregroundColor(.gray)
                            Spacer()
                            SeverityView(severity: severityType)
                        }
                        HStack {
                            Text("Ticket").foregroundColor(.gray).italic()
                            Spacer()
                            Text("#\(id)").foregroundColor(.gray)
                        }
                        HStack {
                            Text(title).font(.system(size: 20)).bold()
                            Spacer()
                            Text(settlement).foregroundColor(.gray)
                        }
                        HStack {
                            Text("Tipo de servicio").foregroundColor(.gray).italic()
                            Spacer()
                            Text("Mantenimiento").foregroundColor(.gray)
                        }
                        HStack {
                            Text("Estatus").foregroundColor(.gray).italic()
                            Spacer()
                            Text("Cerrado").foregroundColor(.gray).bold()
                        }
                       
                    }
                }
               
            }.padding()
        }.background(Colors.brandPrimary)
           
           
            .cornerRadius(8)
    }
}

struct IncidentCardView_Previews: PreviewProvider {
    static var previews: some View {
        IncidentCardView(id: "1", title: "Cable cortado", settlement: "Vistas del lago", service: "Mantenimiento", registeredDate: "Mayo 23, 9:00 AM", status: "Finalizado", severityType: .low)
    }
}
