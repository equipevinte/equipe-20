//
//  SkinsDetails.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 20/08/25.
//

import SwiftUI

struct SkinsDetails: View {
    // A GENTE NAO PRECISA RECEBER A VIEWMODEL, USAMOS O SINGLETON (SHARED) JUSTAMENTE PRA ISSO, PODEMOS ACESSAR A MESMA INSTANCIA EM TODO O CODIGO
    @ObservedObject var userViewModel = UserViewModel.shared
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
                if let skinToBuy = selectedSkin{
                    userViewModel.comprarSkin(skin: skinToBuy)
                } else {
                    print("erro ao receber skin")
                }
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

