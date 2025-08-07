//
//  Loja.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI

struct Loja: View {
    var body: some View {
        ZStack(alignment: .top) {
                    Color.bege.ignoresSafeArea(.all)
                    
                    VStack {
                        Text("Skins de dado")
                            .fontWeight(.semibold)
                            .font(.title)
                        
                        HStack {
                            indicadorDeMoedas()
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                        
                        
                        
                        
                        
                    }
                }
    }
}


#Preview {
    Loja()
}
