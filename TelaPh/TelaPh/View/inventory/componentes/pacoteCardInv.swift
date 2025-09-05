//
//  inventoryCamponent2.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct pacoteCardInv: View {
    let skin: DiceSkin                       // recebe a skin
    @Binding var selectedSkin: DiceSkin?
    @Binding var showEquipSheet: Bool
    @ObservedObject var userVm = UserViewModel.shared
    
    var body: some View {
        Button(action: {
          
               selectedSkin = skin
               showEquipSheet = true
           
        }) {
           VStack {
               Text(skin.nome)
                   .font(.caption)
                   .fontWeight(.bold)
                   .foregroundStyle(colorParaSkinName(skin.nome))
               
               Image(skin.skinImages)
                   .resizable()
                   .scaledToFit()
                   .frame(height: 80)
           }
           .padding()
           .background(Color.marromEscuro)
           .cornerRadius(20)
           .overlay(
               Group {
                   if let user = userVm.user, user.skinAtual.id == skin.id {
                       Color.black.opacity(0.2)
                           .cornerRadius(20)
                       Text("Equipada")
                           .font(.caption)
                           .fontWeight(.bold)
                           .foregroundColor(.white)
                   }
               }
           )
       }
   }
}




