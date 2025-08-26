//
//  equipSkin.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 26/08/25.
//

import SwiftUI

struct equipSkin: View {
    @Binding var selectedSkin: DiceSkin?
    let skin: StoreSkins
    let colums = [
        GridItem(.flexible(), spacing: 0),
    ]
    
    var body: some View {
        VStack{
           
            LazyVGrid(columns: colums){
                ForEach(skin.skins, id: \.self){ skin in
                    ForEach(skin.skinImages, id: \.self){ image in
                        Image(image)
                    }
                }
            }
            
            Button(action:{
                
            }){
                Text("Equipar")
                    .font(.title)
                    .foregroundStyle(.black)
                    .padding()
            }
            .padding(.horizontal, 50)
            .background(Color.marromClaro)
            .cornerRadius(10)
            .padding()
        }
        .frame(width: 350, height: 300)
        .background(Color.marromEscuro)
        .cornerRadius(20)
    }
}


