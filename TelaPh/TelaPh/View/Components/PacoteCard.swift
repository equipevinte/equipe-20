//
//  PacoteCard.swift
//  TelaPh
//
//  Created by Izadora de Oliveira Albuquerque Montenegro on 31/07/25.
//

import SwiftUI

struct PacoteCard: View {
    
    var body: some View {
        VStack {
            Text("Pacote marinho")
                .font(.custom("Silkscreen-Bold", size: 12))
                .foregroundStyle(Color.azulMarinho)
            
            Image("pacoteMarinho")
            
            HStack {
                Image("moeda")
                
                Text("200")
                    .font(.custom("Silkscreen-Bold", size: 25))
                    .foregroundStyle(Color.background)
            }
        }
        .padding(10)
        .background {
            Color.square
        }
        .cornerRadius(20)
    }
}

#Preview {
    PacoteCard()
}
