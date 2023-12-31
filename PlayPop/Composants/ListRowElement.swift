//
//  ListRowElement.swift
//  PlayPop
//
//  Created by apprenant50 on 26/10/2023.
//

import SwiftUI

struct ListRowElement: View {
    
    //texte affiché
    var label: String
    //icone affichée
    var icon: String
    //Determine si le bouton est selectionné
    var isOn = false
    
    
    var body: some View {
        ZStack {
            
            // Couleur du bouton
            if isOn{
                RoundedRectangle(cornerRadius: 30.0)
                    .fill(Color(.systemOrange))
            } else {
                RoundedRectangle(cornerRadius: 30.0)
                    .fill(.ultraThinMaterial)
            }
            
            // Contenu du bouton
            HStack {
                Text(label)
                    .font(.title3)
                Spacer()
                Image(systemName: icon)
            } 
            .padding(.horizontal, 20)
                .foregroundStyle(isOn ? Color.white : Color.primary)
               
        }
        
        .frame(width: 350, height: 60)
    }
}

#Preview {
    ListRowElement(label: "Envies ?", icon: "chevron.right")
}
