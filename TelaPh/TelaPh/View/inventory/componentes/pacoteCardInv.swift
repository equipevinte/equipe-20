//
//  inventoryCamponent2.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct pacoteCardInv: View {
    @ObservedObject var userViewModel = UserViewModel.shared
    @Binding var selectedSkin: DiceSkin?
    @Binding var showEquipSheet: Bool
    
    var body: some View {
        if let user = userViewModel.user {
            ForEach(user.skinsCompradas, id: \.nome) { skin in
                Button(action:{
                    selectedSkin = skin
                    showEquipSheet = true
                }){
                    VStack{
                        Text(skin.nome)
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundStyle(colorParaSkinName(skin.nome))
                        
                        Image(skin.skinImages)
                        
                    }
                    .padding()
                    .background(Color.marromEscuro)
                    .cornerRadius(20)
                }
            }
        }
    }
}


