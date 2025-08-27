//
//  inventoryCamponent2.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct pacoteCardInv: View {
    @Binding var selectedSkin: DiceSkin?
    @Binding var showEquipSheet: Bool
    @StateObject var SkinsInv = StoreSkins()
    var body: some View {
        ForEach(SkinsInv.skins){ skin in //mudei dps que cooloquei a string como unica
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


