//
//  equipSkin.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct EquipSkin: View {
    @Binding var selectedSkin: DiceSkin?
    @Binding var showEquipSheet: Bool
    @ObservedObject var userVm = UserViewModel.shared
    
    
    var body: some View {
        VStack {
            if let skin = selectedSkin {
                Image(skin.skinImages)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 189, height: 156)
                
                //
                if let user = userVm.user, user.skinAtual.id == skin.id {
                    Text("Equipada")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 289, height: 56)
                        .background(Color.verde)
                        .cornerRadius(6)
                } else {
                    Button(action: {
                        userVm.equiparSkin(skin: skin)
                        selectedSkin = userVm.user?.skinAtual
                        showEquipSheet = false
                    }) {
                        Text("Equipar")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding()
                    }
                    .frame(width: 289, height: 56)
                    .background(Color.marromClaro)
                    .cornerRadius(6)
                }
            }
        }
        .frame(width: 350, height: 280)
        .background(Color.marromEscuro)
        .cornerRadius(20)
        
    }
}
