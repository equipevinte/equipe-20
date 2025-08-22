//
//  SkinsDetails.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 20/08/25.
//

import SwiftUI

struct SkinsDetails: View {
    @State private var comprarSkin: UserViewModel?
    @Binding var selectedSkin: DiceSkin?
    let skin: DiceSkin
    
    let colums = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        VStack{
            Text(skin.nome)
                .font(.title)
                .foregroundStyle(colorParaSkinName(skin.nome))
                .padding()

            
            LazyVGrid(columns: colums){
                ForEach(skin.skinsIndividual, id: \.self){ image in
                    Image(image)
                }
            }
            HStack{
                Image("moeda")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 38, height: 38)
                
                Text("\(skin.preco)")
                    .foregroundStyle(.bege)
                    .font(.title)
                
            }
            
            Button(action: {
                comprarSkin?.comprarSkin(skin: DiceSkin?(selectedSkin!) ?? DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false, skinsIndividual: ["d4Marinho", "d6Marinho", "d8Marinho", "d10Marinho", "d12Marinho", "d20Marinho"]))
            }){
                Text("Comprar")
                    .foregroundStyle(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
            }
            .padding(.horizontal, 50)
            .background(Color.marromClaro)
            .cornerRadius(10)
            .padding()
            
            
        }
        .frame(width: 350, height: 423)
        .background(Color.marromEscuro)
        .cornerRadius(20)
    }
}

