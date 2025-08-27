//
//  equipSkin.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct equipSkin: View {
    @Binding var selectedSkin: DiceSkin?
    @StateObject var Store = StoreSkins()
    
  
    var body: some View {
        VStack{
            if let skin = selectedSkin{
                Image(skin.skinImages) //para aparecer uma imagem dependendo de qual pacote clicar
                    .resizable()
                    .scaledToFit()
                    .frame(width: 189, height: 156)
            }
                
            
            Button(action: { //botão de equipar n funcionando ainda
                if selectedSkin != nil {
                    print("Equipou")
                }
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


