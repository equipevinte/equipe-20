//
//  Loja.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct Loja: View {
    @ObservedObject var userViewModel = UserViewModel.shared
    var body: some View {
        ZStack(alignment: .top) {
            Color.background.ignoresSafeArea(.all)
            
            VStack {
                Text("Skins de dado")
                    .fontWeight(.semibold)
                    .font(.title)
                
                HStack {
                    IndicadorMoedas()
                    
                    Spacer()
                    
                }
                .padding(.horizontal)
                
                Button(action: {
                    userViewModel.testandoViewModel()
                }, label: {
                    PacoteCard()
                })
                
                
                
            }
        }
    }
}

#Preview {
    Loja()
}
