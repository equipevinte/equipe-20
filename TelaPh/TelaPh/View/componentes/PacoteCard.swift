//
//  PacoteCard.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import SwiftUI

struct PacoteCard: View {
    var SkinDado: DiceSkin
    var body: some View {
        
        VStack {
            Text("Pacote marinho")
                .font(.custom("Silkscreen-Bold", size: 12))
                .foregroundStyle(.azulMarinho)
            
            Image("PacoteMarinho")
            
            HStack {
                Image("moeda")
                
                Text("200")
                    .font(.custom("Silkscreen-Bold", size: 25))
                    .foregroundStyle(.bege)
            }
            
            
        }//vstack pacoteMarinho
        .padding(.horizontal, 20)
        .background {
            Color.marromEscuro
        }
        .cornerRadius(20)
        
        //teste da lazy da loja
        
        
        
    }
}

#Preview {
    PacoteCard(SkinDado: DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false))

 
}
