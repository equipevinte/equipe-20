//
//  PacoteCard.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 07/08/25.
//

import SwiftUI

struct PacoteCard: View {
    let colums = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    //n sei pq ta dando erro
    
    var body: some View {
        
        ScrollView{//Scroll para qaundo existir mais dados
            LazyVGrid(columns: colums, spacing: 16){ //cria as colunas
                    PacoteCard2() //chama a view com os pacotes
                }

        }
    }
}
    

#Preview {
    PacoteCard()

 
}
