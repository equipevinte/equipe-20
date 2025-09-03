//
//  equipSkin.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct EquipSkin: View {
    @Binding var selectedSkin: DiceSkin?
    @ObservedObject var userVm = UserViewModel.shared
    
    var body: some View {
        VStack {
            if let skin = selectedSkin {
                Image(skin.skinImages)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 189, height: 156)
            }

            Button(action: {
                guard let skin = selectedSkin else { return }
                
                // Equipa a skin no UserViewModel
                userVm.equiparSkin(skin: skin)
                
                // Atualiza o selectedSkin para refletir visualmente
                selectedSkin = userVm.user?.skinAtual
                
                print("Equipou \(skin.nome)")
            }) {
                Text("Equipar")
                    .font(.title)
                    .foregroundStyle(.black)
                    .padding()
            }
            .frame(width: 289, height: 56)
            .background(Color.marromClaro)
            .cornerRadius(6)

        }
        .frame(width: 350, height: 280)
        .background(Color.marromEscuro)
        .cornerRadius(20)
    }
}
