//
//  SeverityView.swift
//  vakandi-app
//
//  Created by Administrador on 28/04/24.
//

import SwiftUI

enum SeverityType {
    case low
    case medium
    case high
     
     var textColor: Color {
         switch self {
         case .low:
             return Colors.lowPrioritySecondary
         case .medium:
             return Colors.mediumPrioritySecondary
         case .high:
             return Colors.highPrioritySecondary
         }
     }
    
    var backgroundColor: Color {
        switch self {
        case .low:
            return Colors.lowPriorityPrimary
        case .medium:
            return Colors.mediumPriorityPrimary
        case .high:
            return Colors.highPriorityPrimary
        }
    }
    
    var text: String {
        switch self {
        case .low:
            return "BAJO"
        case .medium:
            return "MEDIO"
        case .high:
            return "ALTO"
        }
    }
}

struct SeverityView: View {
    
    let severity: SeverityType
    
    
    var body: some View {
        HStack {
            Circle()
                .fill(severity.textColor)
                .frame(width: 10, height: 10)
                .padding(.leading, 5)
            Text(severity.text)
                .font(.caption)
                
                
        }.padding(8).foregroundColor(severity.textColor)
            .background(severity.backgroundColor)
          
            
           
            .clipShape(RoundedRectangle(cornerRadius: 16))
           
    }
}

struct SeverityView_Previews: PreviewProvider {
    static var previews: some View {
        SeverityView(severity: .low)
    }
}
