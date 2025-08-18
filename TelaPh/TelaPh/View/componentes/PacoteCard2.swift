//
//  PacoteCard2.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 17/08/25.
//

import SwiftUI
//View para amenizar a tela Pacotecard e resolver um erro
struct PacoteCard2: View {
    @State private var dadosGlobais = skinsGlobais()

    var body: some View {
        //foreach para passar por todos os dados passados no DiceSkinModel
        ForEach(dadosGlobais.DadoSkinsGlobais) { skin in
            ForEach(skin.skinImages, id: \.self) { image in
                VStack{
                    Text(skin.nome)//nome do pacote com a cor respectiva
                        .font(.headline)
                        .padding(.top, 5)
                        .foregroundStyle(colorParaSkinName(skin.nome))
                    
                    Image(image) //image de cada pacote
                        .resizable()
                        .scaledToFit()
                        .frame(width: 92, height: 72)
                    
                    HStack{ //parte de compra
                        Image("moeda")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        
                        Text("\(skin.preco)")
                            .font(.headline)
                            .foregroundStyle(.bege)
                        
                    }
                    .padding(.bottom, 5)
                }
                .padding(.horizontal, 10)
                .background(Color.marromEscuro)
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    PacoteCard2()
}
