//
//  PacoteMarinhoCompra.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 18/08/25.
//

import SwiftUI

struct PacoteMarinhoCompra: View{
    @State private var buySkin = UserViewModel()
    var skin: DiceSkin
    let colums = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
    var body: some View {
        
        VStack{
            Text(skin.nome)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(colorParaSkinName(skin.nome))
                .padding(.bottom, 50)
            
            
            LazyVGrid(columns: colums) {
                ForEach(skin.skinsIndividual, id: \.self) { skinName in
                    Image(skinName)
                }
            }
            HStack{
                Image("moeda")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 49, height: 49)
                
                Text("\(skin.preco)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.bege)
            }
            Button(action:{
                buySkin.comprarSkin(skin: DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false, skinsIndividual: ["d4Marinho", "d6Marinho", "d8Marinho", "d10Marinho", "d12Marinho", "d20Marinho"] ))
            }){
                Text("Comprar")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .padding(10)
            }
            .padding(.horizontal, 80)
            .background(Color.marromClaro)
            .cornerRadius(6)
            .padding(.bottom, 20)
        }
        .padding(.horizontal, 10)
        .background(Color.marromEscuro)
        .cornerRadius(20)
    }
    }


#Preview {
    PacoteMarinhoCompra(skin: DiceSkin(preco: 200, skinImages: ["PacoteMarinho"], nome: "Pacote Marinho", comprado: false, equipado: false, skinsIndividual: ["d4Marinho", "d6Marinho", "d8Marinho", "d10Marinho", "d12Marinho", "d20Marinho"] ))
}
