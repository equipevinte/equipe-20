//
//  PacoteCard.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import SwiftUI

struct PacoteCard: View {
    var body: some View {
        VStack {
                   Text("Pacote marinho")
                       .font(.custom("Silkscreen-Bold", size: 12))
                       
                   
                   Image("pacoteMarinho")
                   
                   HStack {
                       Image("moeda")
                       
                       Text("200")
                           .font(.custom("Silkscreen-Bold", size: 25))
                           
                   }
               }
               .padding(10)
               .background {
                   Color.marromEscuro
               }
               .cornerRadius(20)
           }
    }


#Preview {
    PacoteCard()
}
